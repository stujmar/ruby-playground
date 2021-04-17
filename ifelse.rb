def launch(bool)
    if bool
        puts "launch"
    else
        puts "waiting"
    end
end

launch(true)
launch(false)