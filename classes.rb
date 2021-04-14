# self or current context

class Spaceship
    def launch(destination)
        @destination = destination
        # go towards destination
    end
    # instance vars are not public outside method but instance methods are. It is like a getter for the destination value.
    def destination
        @destination
    end
end

class Tank
    attr_accessor :destination
end

class Tree
    attr_accessor :location
    attr_reader :name
    attr_writer :name
end

spruce = Tree.new
spruce.name = "Billy the Spruce"
puts spruce.name


puts Spaceship

a = "abc"
b = a
a.upcase!
puts a
puts b

c = "XYZ"
d = c.clone
c.downcase!
puts c
puts d

ship = Spaceship.new
ship.launch("Mars")
p ship

puts ship.destination

tank = Tank.new
tank.destination = "Earth"
puts tank.destination