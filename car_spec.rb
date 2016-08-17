require 'rspec'
require_relative 'car'

describe 'Car' do
  it "should create the Car class" do
    expect { Car }.to_not raise_error
  end

  it "should create a new Car" do
    my_car = Car.new(2000)
    expect { my_car }.to_not raise_error
  end

  it "should have wheels" do
    my_car = Car.new(1994)
    expect(my_car.wheels).to eq 4
  end

  it "should have speed" do
    my_car = Car.new(1990)
    expect(my_car.speed?).to eq 0
  end

  it "should have this information" do
    my_car = Car.new(2002)
    expect(my_car.get_car_info).to include "year:"
    expect(my_car.get_car_info).to include "lights:"
    expect(my_car.get_car_info).to include "signal:"
    expect(my_car.get_car_info).to include "wheels:"
    expect(my_car.get_car_info).to include "speed:"

  end

end
