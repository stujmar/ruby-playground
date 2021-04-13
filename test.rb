# puts "Hello"

lander_count = 15

result = nil

def double(val)
    val * 2
end

message = if lander_count > 10
    "Launching probe"
else
    "Waiting"
end

puts message
