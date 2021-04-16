# a and b point to the same object
a=b=1

# same object is true
puts "comparing the same variable"
puts a.equal?(b)

c = 2
d = 2

# same value is true
puts "comparing the same variable value"
puts c.equal?(d)

class Sibling
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def ==(other)
        name == other.name
    end
end

# different instances same name is false,
sibling1 = Sibling.new("Stu")
sibling2 = Sibling.new("Stu")

puts "comparing objects"
puts sibling1.equal?(sibling2)

puts "comparing names"
puts sibling1.name == sibling2.name

puts "comparing objects with overwritten == operator"
puts sibling1 == sibling2