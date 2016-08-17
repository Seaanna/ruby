require_relative 'car'

class Toyota < Car
  #function to increase the speed by 7
  def speedup
    @speed = @speed + 7.0
  end
  #function to decrease the speed by 5
  def slow
    if @speed < 5.0
      @speed = 0.0
    else
      @speed = @speed - 5.0
    end
  end
  def get_car_info
    super
  end
end
