
# Ruby doesn't have boolean data type.
# true => TrueClass, this is an object
# false => FalseClass, this is an object

a = true
b = false
puts a.class
puts b.class

# you can call methods in numbers.
# Integer Fixnum and Bignum are subclasses of the Integer.

# underscores are ignored in numbers so can be used for readability
c = 100_000
puts c # outputs 100000