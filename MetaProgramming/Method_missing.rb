class Something 
    def method_missing name
        puts "Method #{name} dosn't exist"
    end
end

s = Something.new 
s.say_hi