# a and b point to the same object
a=b=1

# same object is true
puts a.equal?(b)

c = 2
d = 2

# same value is true
puts c.equal?(d)

class Sibling
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

# different instances same name is false
sibling1 = Sibling.new("Stu")
sibling2 = Sibling.new("Stu")

puts sibling1.equal?(sibling2)