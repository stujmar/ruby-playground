class Spaceship
    @@thruster_count = 2
    @fuel_level = 5
    def self.thruster_count # self. makes this a class method.
        "the ship's thruster count is #{@@thruster_count}"
    end
    def refuel(amount)
        @fuel_level = @fuel_level.to_i + amount.to_i
        puts @fuel_level
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

def