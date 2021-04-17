def launch(bool)
    if bool
        puts "launch"
    else
        puts "waiting"
    end
end

launch(true)
launch(false)

class Cat
    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

kitty ||= Cat.new("kitty")
kitty ||= Cat.new("Carty") # doesn't execuse.

puts kitty.name