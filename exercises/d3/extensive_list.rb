puts "Welcome to the list builder!"
puts ""
puts 'Your list is currently empty. To add to the list type "add item_to_add". To remove item from list type "remove item_to_remove". To quit the program at any point type "quit".'
puts ""

list = []
x = "run"

while x != "quit" 
	puts "What can I do for you?"
	user_input = gets.strip.split
	instruction = user_input.first
	user_input.delete(instruction)
	if (instruction == "add")
		list << user_input
		puts "Added! Your list is: #{list}"
	elsif (instruction == "remove")
		list.delete(user_input)
		puts "Removed! Your list is: #{list}"
	elsif (instruction == "quit")
		x = "quit"
	else
		puts "The instructions you have entered is not valid. Try again."
	end
	puts""
end
