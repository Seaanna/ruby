require 'rspec'
require_relative 'vehicle'

describe 'Vehicle' do
  it "should create the Vehicle class" do
    expect { Vehicle }.to_not raise_error
  end

  it "should create a new Vehicle" do
    my_vehicle = Vehicle.new(2014)
    expect { my_vehicle }.to_not raise_error
  end

  it "should have a year" do
    my_vehicle = Vehicle.new(2016)
    expect(my_vehicle.year).to be 2016
  end

  it "should have lights" do
    my_vehicle = Vehicle.new(2016)
    my_vehicle.lights("on")
    expect(my_vehicle.lights?).to eq true
  end

  it "should have turn signal" do
    my_vehicle = Vehicle.new(2020)
    my_vehicle.turn_signal("right")
    expect(my_vehicle.signal?).to eq "right"
  end
end
