# Detect a winner when a player has won
# The player input will be an integer from 0-8 and the squares will be numbered top-left to bottom-right (0 is the top-left square, 2 is the top-right square, 4 is the middle square, and 8 is the bottom-right square).
# How do you detect a winner?
# When does the program stop? Is there a loop? If so, what kind?


player_one_turn = true
move = 8
board = [0,0,0,0,0,0,0,0,0]
board_layout = [[" "," "," ","|"," "," "," ","|"," "," "],
				["_","_","_","+","_","_","_","+","_","_"],
				[" "," "," ","|"," "," "," ","|"," "," "],
				["_","_","_","+","_","_","_","+","_","_"],
				[" "," "," ","|"," "," "," ","|"," "," "]]

def main ()
	while true
		while true
			puts "Where would you to go? Enter number from 0 to 8."
			move = gets.strip.to_i
			if (move > 8) || (move <0) || ( ! (board[move] == 0))
				puts "Error. Move not valid. Try again."
			else
				board[move] = player_one_turn ? "X" : "O"
				break
			end
		end

		p board
		player_one_turn = !player_one_turn
		puts "Player #{player_one_turn ? "one's" : "two's"} turn..."
	end
end


def print_board ( to_print , move)
	if move < 3
		row = 0
	elsif move < 6
		row = 2
		move = move - 3
	else 
		row = 4
		move = move - 3
	end
	move = 0 ? move = 1 : move = move * 3 -1
	board_layout[row][move] = to_print
	p board_layout
end

print_board ("X", move)
