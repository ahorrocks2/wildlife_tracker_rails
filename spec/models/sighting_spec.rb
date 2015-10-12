require 'rails_helper'

describe Sighting do
  it {should validate_presence_of :location}
  it {should validate_presence_of :longitude}
  it {should validate_presence_of :latitude}
  it {should validate_presence_of :date}
  it {should belong_to :animal}
end
