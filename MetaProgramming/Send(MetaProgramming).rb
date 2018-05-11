#1
def mm hh
  puts hh.inspect
end

send :mm, :aa => 23, :bb => 456

#------------------------------------------------------------------------------------------
#2
class Something
  attr_accessor :name

  def initialize
    send("name=", "Mike")
  end
end

s = Something.new
puts s.name

#------------------------------------------------------------------------------------------
#3-Позволяет инициализировать сколько угодно передаваемых значенийй через хэш
class Something
	attr_accessor :x, :y

	def initialize hash 
		hash.each do |key, value|
			send "#{key}=", value
		end
	end
end

s = Something.new :x => 2, :y => 6
puts s.y