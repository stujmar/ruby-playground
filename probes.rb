class Probe
    def deploy
        puts "probe deployed"
    end
    def take_sample
        puts "sample taken"
    end
end

class MineralProbe < Probe
    def take_sample
        puts "take mineral sample"
    end
end

class AtmosphericProbe < Probe
    def deploy
        puts "warming up"
        super # returns what the super method returns
    end
    def take_sample
        puts "take atmospheric sample"
    end
end

Addy = AtmosphericProbe.new
Addy.deploy
Addy.take_sample