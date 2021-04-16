# a and b point to the same object
a=b=1

puts a.equal?(b)

class Sibling
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

sibling1 = Sibling.new("Stu")
sibling2 = Sibling.new("Stu")

puts sibling1.equal?(sibling2)