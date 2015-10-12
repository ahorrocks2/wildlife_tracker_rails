require 'rails_helper'

describe Animal do
  it { should validate_presence_of :name}
  it { should validate_presence_of :locality}
  it { should validate_presence_of :enemy}
  it { should have_many :sightings}
end
