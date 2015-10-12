class Animal < ActiveRecord::Base
  validates :name, :locality, :enemy, presence: true

  has_many :sightings
end
