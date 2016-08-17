require 'rspec'
require_relative 'tata'

describe 'Tata' do
  it "should create the Tata class" do
    expect { Tata }.to_not raise_error
  end

  it "should create a new Tata" do
    my_tata = Tata.new(2000)
    expect { my_tata }.to_not raise_error
  end

  it "should have lights" do
    my_tata = Tata.new(2016)
    my_tata.lights("on")
    expect(my_tata.lights?).to eq true
  end

  it "should accelerate" do
    my_tata = Tata.new(1999)
    my_tata.speedup
    expect(my_tata.speed?).to be 2.0
  end

  it "should brake" do
    my_tata = Tata.new(2004)
    my_tata.speedup
    my_tata.slow
    expect(my_tata.speed?).to be 0.75
  end


end
