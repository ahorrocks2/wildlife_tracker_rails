class Sighting < ActiveRecord::Base
  validates :location, :longitude, :latitude, :date, presence: true

  belongs_to :animal
end
