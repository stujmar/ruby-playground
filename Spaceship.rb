class Spaceship
    attr_reader :call_sign # this is a getter for call sign
    protected :call_sign # make the call sign private
    @@thruster_count = 2
    @fuel_level = 5

    def initialize
        @call_sign = "shipity-do-da"
    end

    def self.thruster_count # self. makes this a class method.
        "the ship's thruster count is #{@@thruster_count}"
    end

    def refuel(amount)
        @fuel_level = @fuel_level.to_i + amount.to_i #this isn't working
        puts @fuel_level
    end

    def matches?(other)
        call_sign == other.call_sign
    end

    def alarm()
        puts "beep beep boop"
    end
    private :alarm

    def alarm_keys(keycode)
        if keycode == 123
            alarm()
        else
            puts "wrong key code"
        end
    end
end

class Cruiser < Spaceship

    attr_accessor :call_sign

    def initialize
        @call_sign = "Cruisin' USA"
    end
end

shippy = Spaceship.new
cruisy = Cruiser.new

puts [shippy, cruisy]
puts shippy.matches?(cruisy)
cruisy.call_sign = "shipity-do-da"
puts shippy.matches?(cruisy)
