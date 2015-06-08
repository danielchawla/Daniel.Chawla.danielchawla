puts "Welcome to the container builder!"
puts ""
puts 'Your container is currently empty. To add to the container type "add item_to_add". To remove item from container type "remove item_to_remove". To quit the program at any point type "quit".'
puts ""

container = Hash.new(0)
x = "run"

while x != "quit" 
	puts "What can I do for you?"
	user_input = gets.strip.split
	instruction = user_input.first
	user_input.delete(instruction)
	if (instruction == "add")
		container[user_input] = container[user_input] + 1
		puts "Added! Your container has: #{container}"
	elsif (instruction == "remove")
		if (container[user_input] > 0)
			container[user_input] = container[user_input] - 1
			puts "Removed! Your container has: #{container}"
		else
			puts "Error. There are no #{user_input.join}s in container."
		end
	elsif (instruction == "quit")
		x = "quit"
	else
		puts "The instructions you have entered is not valid. Try again."
	end
	puts""
end
