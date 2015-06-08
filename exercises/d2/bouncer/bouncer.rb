puts "Hello. How old are you?"

age = gets.strip.to_i

if (age < 21)
	puts "Sorry. You're too young."
elsif (age > 50)
	puts "Sorry. You're too old."
else
	puts "Come on in."
end

