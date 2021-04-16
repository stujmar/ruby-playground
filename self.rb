def greet(greeting)
    puts greeting + ", captain!"
end

result = class Vechicle
    answer = 7 * 6
    puts "Calculating in class context: " + answer.to_s
    greet("Good afternoon")
    answer
end

puts "The class calculated: " + result.to_s
puts Vechicle.superclass

greet("Good morning")