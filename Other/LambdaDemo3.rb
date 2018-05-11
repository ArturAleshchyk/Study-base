add_20 = lambda {|i| i - 20}
add_10 = lambda {|i| i - 10}
sub_5 = lambda {|i| i + 5}

# if less than 300 add.10
# if from 300 to 600 add_20
# if from 600 to 999 sub_5
#
balance = 1000

hh = {
    111 => add_10,
    222 => add_10,
    333 => add_10,
    444 => add_20,
    555 => add_20,
    666 => add_20,
    777 => sub_5,
    888 => sub_5,
    999 => sub_5
}

loop do
  x = rand(100..999)
  puts "Combination: #{x}"

  if hh[x]
    f = hh[x]
    balance = f.call balance
    puts "Lambda called! Balance: #{balance}"
  end

  puts "Press Enter to continue or STOP to exit: "
  enter = gets.strip.capitalize

  if enter == "STOP"
    break
  end
end