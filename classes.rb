# self or current context

class Spaceship
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