# multi-line block
[1, 2, 3].each do |n|
    puts "Number #{n}"
end

# single-line block
[1, 2, 3].each {|n| puts "Inline #{n}"}

# |n| is a block parmameter

def my_method
    puts "something"
end
my_method { "hello" } # hello is a block passed to the method but ignored?



