require_relative 'car'

class Tata < Car
  # function to increase the speed by 2
  def speedup
    @speed = @speed + 2.0
  end
  #function to decrease the speed by 1.25
  def slow
    if @speed < 1.25
      @speed = 0.0
    else
      @speed = @speed - 1.25
    end
  end

  def get_car_info
    super
  end
end
