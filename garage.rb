

class Garage
  def initialize
    @contents = []
  end

  def add_car(car)
    @contents<<car
  end

  def contents
    @contents
  end

  #write a function to sort the cars
  def sort_year
    @contents.sort{ |x,y| x.year <=> y.year }
  end
end
