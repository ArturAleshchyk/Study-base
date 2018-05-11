module Humans
  class Hipster
    def say_hi
      puts "Hiiiii yo"
    end
  end

  class Manager
    def say_hi
      puts "Hi"
    end
  end

  class JessiePinkman
    def say_hi
      puts "Hi bitch"
    end
  end
end

hipster = Humans::Hipster.new
hipster.say_hi

manager = Humans::Manager.new
manager.say_hi

jessiePinkman = Humans::JessiePinkman.new
jessiePinkman.say_hi
