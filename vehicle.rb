class Vehicle
  def initialize(year)
    #create a variable for year
    @year=year
    #create a variable for for the lights
    @lights=false
    #create a variable for the turn signal
    @signal="off"
  end

#returns the year variable
  def year
    @year
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

      def get_car_info
        "year: " + @year.to_s + " lights: "  + @lights.to_s + " signal: " + @signal 
      end

end
