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

# && || and or
# different levels of precedence
# in conditional in && || in conditionals
# and or for flow control in special situations.

def status(codes)
    case (codes)
    when "far" then puts "something far away"
    when "close" then puts "it is closer"
    when "here" then puts "it is here"
    end
end

status("far")
status("close")
status("here")

