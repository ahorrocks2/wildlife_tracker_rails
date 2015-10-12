class Animal < ActiveRecord::Base
  validates :name, :locality, :enemy, presence: true
end
