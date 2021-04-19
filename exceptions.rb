# this module will not run it is pseudocode

def launch
    begin
        batten_hatches
    rescue
        puts "hatches failed"
        return false # explict return statement required here.
    end
    puts "light seatbelt sign" # this could also raise an expection.
end

# exception catching at end catches any exceptions.
def launch
    batten_hatches
    light_seatbelt_sign
    true
rescue LightError
    puts "Lights not working, stil launching"
    true
rescue StandardError => e # let's check what kind of exception it was
    puts e.message
    false
end

# raise and rescue keywords.

rescue HatchError => err
    puts $!.message # maybe look this up.
    raise
end

