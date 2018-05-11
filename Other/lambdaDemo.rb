#Create 2 lambda functions
say_hi = lambda { puts "Hi"}
say_bye = lambda { puts "Bye"}

#Add lambda functions to array
week = [say_hi, say_hi, say_hi, say_hi, say_hi, say_bye, say_bye]

#Iterating array and calling lambda functions
week.each do |x|
  x.call
end