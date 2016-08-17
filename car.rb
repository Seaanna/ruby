require_relative 'vehicle'

class Car < Vehicle
  def initialize(year)
    super year
    @wheels= 4
    #make a variable for speed and set the default to 0
    @speed = 0.0
    # #make a variable for info
    # @info
  end

  def wheels
    @wheels
  end

  #returns the speed variable
  def speed?
    @speed
  end

  def get_car_info
    self.class.to_s + ": wheels: " + @wheels.to_s + " speed: " + @speed.to_s + " " + super
  end
  #
  # def info
  #   @info
  # end

end
