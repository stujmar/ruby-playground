# self or current context

class Spaceship
    def launch(destination)
        @destination = destination
        # go towards destination
    end
    def destination
        @destination
    end
end

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