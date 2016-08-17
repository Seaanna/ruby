require 'rspec'
require_relative 'garage'

require_relative 'tesla'
require_relative 'tata'
require_relative 'toyota'


describe 'Garage' do
  it "should create the class of Garage" do
    expect { Garage }.to_not raise_error
  end

  it "should create a new instance of Garage called my_cars" do
    my_garage = Garage.new
    expect { my_garage }.to_not raise_error
  end

  it "can hold cars" do
    my_garage = Garage.new
    my_tesla = Tesla.new(2000)
    my_garage.add_car(my_tesla)
    my_tata = Tata.new(1990)
    my_garage.add_car(my_tata)
    my_toyota=Toyota.new(1980)
    my_garage.add_car(my_toyota)

    expect(my_garage.contents).to include my_tesla
    expect(my_garage.contents).to include my_tata
    expect(my_garage.contents).to include my_toyota
  end

  it "can sort cars" do
# test to sort cars in the garage
  my_garage = Garage.new
  my_tesla = Tesla.new(2000)
  my_garage.add_car(my_tesla)
  my_tata = Tata.new(1990)
  my_garage.add_car(my_tata)
  my_toyota=Toyota.new(1980)
  my_garage.add_car(my_toyota)

  expect(my_garage.sort_year).to match_array
  []
  #expect(my_garage.sort_model).to
  #expect(my_garage.sort_year_model).to
  end
end
