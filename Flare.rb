class Flare
    def launch
        red_flares
        blue_flares
    end

    private

    def red_flares
        puts "red flares"
    end

    def blue_flares
        puts "blue flares"
    end

    def green_flares
        puts "green flares"
    end
end

class BottleRocket < Flare
    def initialize
        green_flares # this is going to run even though it is private
    end
end