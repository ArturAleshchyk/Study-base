class Man
  def self.say_hi     #Static method .self works without creating an object with Man.new
    puts "Hi people"
  end
end

class Manager
  def self.say_hi     #Static method .self works without creating an object with Man.new
    puts "Hi"
  end
end

class JessyPinkman
  def self.say_hi     #Static method .self works without creating an object with Man.new
    puts "Hi Bitch"
  end
end

Man.say_hi
Manager.say_hi
JessyPinkman.say_hi