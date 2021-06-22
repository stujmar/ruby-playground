# Arrays can hold a mixture of difference data types. [1, "two", 3.0]
my_array = [1, "two", 3.0]
print my_array

# Empty arrays can be generated with a new method on the array class. []
empty_array = Array.new
print empty_array

# Empty arrays of a certain length. [nil, nil, nil]
three_array = Array.new(3)
print three_array

# Empty array of a certain length and value.
true_array = Array.new(3, true)
print true_array

puts # new line

# Create a new array of empty hashes
hash_array = Array.new(3) { Hash.new }
print hash_array

# Create a new array and use an interator.
num_array = Array.new(3) {|i| i.to_s }
print num_array

puts # new line

# Use this method to create multidimensional arrays.
empty_table = Array.new(3) { Array.new(3) }
print empty_table

puts # new line

# There is also the array method.
method_array = Array({:a => "a", :b => "b"}) 
print method_array

# Accessing arrays.
access_array = [1, 2, 3, 4, 5, 6]
access_array[2] #=> 3
access_array[100] #=> nil
access_array[-3] #=> 4 (counts from the end)
access_array[1..4] #=> [2,3,4,5] from one index to another including both indices.
access_array[1..-3] #=> [2,3,4] from start index to backcount position.

# Or use the at method on the array
print access_array.at(5)

puts # line break

mixed_array = ["cool", "cool", "lame"]
cool_array = mixed_array.slice(0,2)
lame_array = mixed_array.slice(-1)
print cool_array
print lame_array

puts # line break

# Try out some fetch methods.
abc_array = ['a', 'b', 'c', 'd', 'e', 'f']
print abc_array.fetch(100, 'oops ')
print abc_array.fetch(2)

# First and last.
print abc_array.first
print abc_array.last

# Take take or drop the first n elements.
print abc_array.take(3)
print abc_array.drop(3)

puts
puts "Array lengths:" # line break
array_browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'Edge']
puts array_browsers.length
puts array_browsers.count
puts array_browsers.size
# check if they include an item.
puts array_browsers.include?('IE')

puts "Check if arrays are empty:"
empty_array = []
full_array = ['data']
print empty_array.empty?
print full_array.empty?

puts # Modifying Arrays
week_array = ['Monday']
week_array = week_array.push('Tuesday') # Add an item to the end of an array.
week_array = week_array << 'Wednesday'  # ""
week_array = week_array.unshift('Sunday') # Add an item to the beginning of an array.
print week_array

sizes_array = ['first', 'last']
sizes_array = sizes_array.insert(1,'medium') # Insert an item into an array at a given index.
print sizes_array
sizes_array = sizes_array.insert(1, 'a', 'bunch', 'of', 'other', 'data')
puts
print sizes_array

puts # Removing an item from the end of an array.
short_array = ['one', 'two', 'three']
print short_array.pop
print short_array

puts # Removing an item from the beginning of an array.
short_array = ['one', 'two', 'three']
print short_array.shift
print short_array

puts # Deleting an item from a specific index
short_array = ['one', 'two', 'three']
short_array.delete_at(1)
print short_array

puts # Delete a specific item
which_one = ['apple', 'puddle', 'orange', 'banana']
which_one.delete('puddle')
print which_one

puts # Delete all nil values from an array
dirty_array = [1, nil, 2, nil, 3, nil]
print dirty_array.compact

puts # Removing duplicate items
dirty_array = [1, 1, 2, 2, 3, 3]
print "Object id: #{dirty_array.object_id}"