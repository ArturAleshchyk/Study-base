input = File.open('test.txt', 'r')

#Конструкция позволяет читать весь файл строка а строкой
while (line = input.gets)
    puts line
end

input.close