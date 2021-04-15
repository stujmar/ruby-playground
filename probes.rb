class Probe
    def deploy(deploy_time, return_time)
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
    def deploy(deploy_time)
        puts "warming up"
        super(deploy_time, 10) # returns what the super method returns
    end
    def take_sample
        puts "take atmospheric sample"
    end
end

Addy = AtmosphericProbe.new
Addy.deploy(10)
Addy.take_sample

# puts Spaceship.thruster_count
# rocky_rocket = Spaceship.new
# puts rocky_rocket.refuel(2)
# puts rocky_rocket.refuel(11)
# rocky_rocket.alarm_keys("password")
# rocky_rocket.alarm_keys(123)