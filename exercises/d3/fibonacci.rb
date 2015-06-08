puts "Enter a number:"
num = gets.strip.to_i

if (num <= 0)
	abort("Invalid number. Terminating program.")
elsif(num == 1 or num == 2)
	puts "Fibonacci at #{num}:1"
end

# sequence = Array.new(num,1)

# x = 2
# while (x < num)
# 	sequence[x] = sequence[x-1] + sequence[x-2]
# 	x += 1
# end

# puts "Fibonacci at #{num} is #{sequence[x-1]}."


fib = [1,1]
x = 2
while (x < num)
	fib << fib[x-1] + fib[x-2]
	x += 1
end

puts "Fibonacci at #{num} is #{sequence[x-1]}."






