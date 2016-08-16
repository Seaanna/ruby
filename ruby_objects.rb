class Vehicle
  def initialize(year)
    #create a variable for year
    @year=year
    #create a variable for for the lights
    @lights=false
    #create a variable for the turn signal
    @signal="off"
  end

# Purpose: to determine if the lights are on or off
# Signature: on/off --> boolean
# Example: lights(on) --> true
          #lights(off) --> false
  def lights(lights)
    if lights == "on"
      @lights = true
    elsif lights == "off"
      @lights = false
    end
  end
# returns the lights variable
  def lights?
    @lights
  end
#returns the year variable
  def year?
    @year
  end

# Purpose: to determine if the turn signal is left, right or off
# Signature: "string" --> "string"
# Example: turn_signal("left") --> "left"
  def turn_signal(turn)
    if turn == "left"
      @signal = "left"
    elsif turn == "right"
      @signal = "right"
    else
      @signal = "off"
    end
  end

  #returns the signal variable
  def signal?
    @signal
  end

end #end of vehicle

class Car < Vehicle

  def initialize(year)
    # inherits year from the vehicle class
    super year
    #make a variable for wheels and set the default to 4
    @wheels = 4
    #make a variable for speed and set the default to 0
    @speed = 0.0
  end
  #returns the wheels variable
  def wheels?
    @wheels
  end
  #returns the speed variable
  def speed?
    @speed
  end
end

class Tesla < Car
  # function to increase the speed by 10
  def speedup
    @speed = @speed + 10
  end
  # function to decrease the speed by 7
  def slow
    if @speed < 7
      @speed = 0.0
    else
      @speed = @speed - 7
    end
  end
  #returns the speed
  def speed?
    @speed
  end
end

class Tata < Car
  # function to increase the speed by 2
  def speedup
    @speed = @speed + 2
  end
  #function to decrease the speed by 1.25
  def slow
    if @speed < 1.25
      @speed = 0.0
    else
      @speed = @speed - 1.25
    end
  end
  # returns the speed
  def speed?
    @speed
  end
end

class Toyota < Car
  #function to increase the speed by 7
  def speedup
    @speed = @speed + 7
  end
  #function to decrease the speed by 5
  def slow
    if @speed < 5
      @speed = 0.0
    else
      @speed = @speed - 5
    end
  end
  # returns the speed
  def speed?
    @speed
  end
end

my_cars = []

my_cars<<my_tesla=Tesla.new(2016)
my_cars<<my_tata=Tata.new(2012)
my_cars<<my_toyota=Toyota.new(1994)
my_cars<<my_tesla=Tesla.new(2015)
my_cars<<my_tata=Tata.new(2013)
my_cars<<my_toyota=Toyota.new(1999)

my_cars.sort
