class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :location
      t.integer :longitude
      t.integer :latitude
      t.date :date
      t.integer :animal_id

      t.timestamps
    end
  end
end
