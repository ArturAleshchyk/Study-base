#'r', 'w', 'r+', 'w+', 'a' accessors
output = File.open('output.txt', 'a')
output.write "Something\n"
output.close