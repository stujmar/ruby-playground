def greet(greeting)
    puts greeting + ", captain!"
end

result = class Vehicle
    answer = 7 * 6
    puts "Calculating in class context: " + answer.to_s
    greet("Good afternoon")
    answer
end

puts "The class calculated: " + result.to_s
puts Vehicle.superclass

greet("Good morning")

# Class methods vs instance methods

class Car < Vehicle

    def drive
        puts "driving"
    end

    def self.honk
        puts "beep beep"
    end


end

tesla = Car.new

tesla.drive
Car.honk
