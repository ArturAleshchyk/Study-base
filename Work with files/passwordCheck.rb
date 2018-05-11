puts "Enter your password: "
user_password = gets.strip

input = File.open('password.txr', 'r')

while (line = input.gets)
    line.strip!
    if user_password.include? line
        puts "Your password is week!"
        exit
    end
end

puts "Your password is not week!"