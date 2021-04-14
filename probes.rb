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

class Spaceship
    @@thruster_count = 2
    def self.thruster_count # self. makes this a class method.
        "the ship's thruster count is #{@@thruster_count}"
    end
end

puts Spaceship.thruster_count