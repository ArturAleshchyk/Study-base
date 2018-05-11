print "Enter Papper Scissors or Rock: "
answer = gets.strip.capitalize

if answer == 'P'
  user_choise = :papper
elsif answer == 'S'
  user_choise = :scissors
elsif answer == 'R'
  user_choise = :rock
else
  puts 'Your input is incorrect. Programm closed.'
end

arr = [:papper, :scissors, :rock]

computer_choise = arr[rand(0..2)]

combinations = [
    [:rock, :rock, :draw],
    [:scissors, :scissors, :draw],
    [:papper, :papper, :draw],
    [:rock, :scissors, :first_win],
    [:rock, :papper, :second_win],
    [:papper, :rock, :first_win],
    [:papper, :scissors, :second_win],
    [:scissors, :rock, :second_win],
    [:scissors, :papper, :first_win]
]

combinations.each do |index|
  if user_choise == index[0] && computer_choise == index[1] && index[2] == :draw
    puts "User choise: #{index[0]}. Computer choise: #{index[1]}"
    puts "DRAW"
  elsif user_choise == index[0] && computer_choise == index[1] && index[2] == :first_win
    puts "User choise: #{index[0]}. Computer choise: #{index[1]}"
    puts "User Win!"
  elsif user_choise == index[0] && computer_choise == index[1] && index[2] == :second_win
    puts "User choise: #{index[0]}. Computer choise: #{index[1]}"
    puts "Computer win =("
  end
end

