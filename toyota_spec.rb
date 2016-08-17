require 'rspec'
require_relative 'toyota'

describe 'Toyota' do
  it "should create the Toyota class" do
    expect { Toyota }.to_not raise_error
  end

  it "should create a new Toyota" do
    my_toyota = Toyota.new(1999)
    expect { my_toyota }.to_not raise_error
  end

  it "should accelerate" do
    my_toyota = Toyota.new(1999)
    my_toyota.speedup
    expect(my_toyota.speed?).to eq 7.0
  end

  it "should brake" do
    my_toyota = Toyota.new(2004)
    my_toyota.speedup
    my_toyota.slow
    expect(my_toyota.speed?).to eq 2.0
  end


end
