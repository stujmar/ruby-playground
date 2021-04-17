# while loop
high_alert = true
while high_alert
    puts "sound alarm"
    high_alert = false
end

# until loop
counter = 0
until counter == 10
    puts "counter at #{counter}"
    counter = counter + 1
end

# begin loop
count_down = 10
begin
    puts "#{count_down} seconds left"
    count_down = count_down - 1
    if count_down == 0
        puts "Happy New Year!"
    end
end while count_down >= 1 # repeat if this is true, so you get one last run through before it hits this with the end values.

for i in [3, 2, 1]
    puts i
end

for i in (1..10) # two dots incules the last number in the range
    puts i
end