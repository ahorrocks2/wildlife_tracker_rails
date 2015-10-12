class SightingsController < ApplicationController
  def show
    @sighting = Sighting.find(params[:id])
    @region = @sighting.region.name
    render :show
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.new(sighting_params)
    if @sighting.save
      redirect_to animal_path(@sighting.animal)
    else
      render :new
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    @animal = @sighting.animal
    render :edit
  end

  def update
    @sighting = Sighting.find(params[:id])
    @animal = @sighting.animal
    if @sighting.update(sighting_params)
      redirect_to animal_path(@animal)
    else
      render :edit
    end
  end

  def destroy
    sighting = Sighting.find(params[:id])
    animal = sighting.animal
    sighting.destroy
    redirect_to animal_path(animal)
  end

private
  def sighting_params
    params.require(:sighting).permit(:location, :longitude, :latitude, :date, :region_id)
  end
end
