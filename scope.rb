# Classes and Methods have local scpoe
# Loops if/else and begin/end blocks do not.

# a is defined within the scope of the if statement.
if true
    a = 10
end

# but it still existed within global scope, interesting.
puts a # outputs 10.