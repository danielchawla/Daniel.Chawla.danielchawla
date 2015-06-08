puts "Welcome to the list builder!"

list = []
x = 1


while x == 1 
	puts "What can I add?"
	to_add = gets.strip
	list << to_add
	puts "Added! Your list is: #{list}"
	puts "Add more to the list? Enter 1 to continue. Enter anything else to terminate."
	x = gets.strip.to_i
end

