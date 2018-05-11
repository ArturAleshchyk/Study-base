def run_5_times
  x = 0
    while x < 5
        yield x
      x += 1
    end
end

run_5_times {|a| puts "#{a} Hello!"}
