require "./Spaceship.rb"
require "./Flare.rb"

puts Spaceship.thruster_count
rocky_rocket = Spaceship.new

rocky_rocket.alarm_keys("password")
rocky_rocket.alarm_keys(123)

july_day = Flare.new
july_day.launch

# bypass the private status of the method
july_day.send :green_flares

bingo = BottleRocket.new # calls private method green_flares on initialization 
# bingo