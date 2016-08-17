require 'rspec'
require_relative 'tesla'

describe 'Tesla' do
  it "should create the Tesla class" do
    expect { Tesla }.to_not raise_error
  end

  it "should create a new Tesla" do
    my_tesla = Tesla.new(1994)
    expect { my_tesla }.to_not raise_error
  end

  it "should accelerate" do
    my_tesla = Tesla.new(1999)
    my_tesla.speedup
    expect(my_tesla.speed?).to eq 10.0
  end

  it "should brake" do
    my_tesla = Tesla.new(2004)
    my_tesla.speedup
    my_tesla.slow
    expect(my_tesla.speed?).to eq 3.0
  end

  it "should be a "

end
