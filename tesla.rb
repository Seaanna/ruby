# require_relative 'vehicle'
require_relative 'car'

class Tesla < Car
  # function to increase the speed by 10
  def speedup
    @speed = @speed + 10.0
  end
  # function to decrease the speed by 7
  def slow
    if @speed < 7.0
      @speed = 0.0
    else
      @speed = @speed - 7.0
    end
  end
  
  def get_car_info
    super
  end
end
