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

# ensure claus 
# ensure some code runs after an exception is caught? exception goes off ensure file is closed or data is cleaned up.

# retrying 
def batten_hatches
    hatch_list = API.request("/hatches")
    # ...
rescue RuntimeError => e
    attempts ||= 0
    attempts += 1
    if attempts < 3
        puts e.message + ". Retrying request."
        retry
    else
        puts "Request failed"
        raise
    end
end

