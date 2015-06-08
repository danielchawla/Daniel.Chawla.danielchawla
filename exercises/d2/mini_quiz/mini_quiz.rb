puts ""
puts "Welcome to Daniel's mini quiz."
puts ""

points = 0

puts "Whats my last name?"
name = gets.strip 
if (name == "chawla") || (name == "Chawla")
	points += 1
	suffix = (points == 1) ? "" : "s"
	puts "Right. You have #{points} point#{suffix}."
else
	plural = "points"
	suffix = (points == 1) ? "" : "s"
	puts "Wrong... My last name is Chawla. You have #{points} point#{suffix}."
end

puts ""
puts "How many siblings do I have?"
siblings = gets.strip.to_i
if (siblings == 1)
	points += 1
	suffix = (points == 1) ? "" : "s"
	puts "Right. You have #{points} point#{suffix}."
else
	puts "Wrong... I have 1 sibling. You have #{points} point#{suffix}."
end

puts ""
puts "How old am I?"
age = gets.strip.to_i
if (age == 22)
	points += 1
	suffix = (points == 1) ? "" : "s"
	puts "Right. You have #{points} point#{suffix}."
else
	puts "Wrong... I'm 22. You have #{points} point#{suffix}."
end

puts ""
puts "On a scale of 1 to 10, how cool am I?"
coolness = gets.strip.to_i
if (coolness < 1)
	puts "You fool! You have now lost all your points. Goodbye!"
	puts""
elsif (coolness < 7)
	puts "Wrong. You need to get to know me more."
	puts "You have #{points} point#{suffix}."
	puts""
elsif (coolness <= 10)
	points += 1
	suffix = (points == 1) ? "" : "s"
	puts "Correct. You are awesome. You have #{points} point#{suffix}!"
	puts ""
	puts "Thanks for playing!"
else
	puts "That's sweet of you. Maybe a little too flattering."
	puts "But you have won the game!"
	puts ""
end
