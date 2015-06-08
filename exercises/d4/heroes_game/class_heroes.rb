class living_thing
	
	def initialize(name, health, power)
		@name = name
		@health = health
		@power = power
	end

	def dead? (character)
		puts "I'm dead." if character[:health] <= 0 
		return (character[:health] <= 0)
	end
end


class Hero < living_thing
	
	def initialize(name, health, power, items)
		@name = name
		@health = health
		@power = power
		@items = items
		@exp = 0
	end

	def attack(defendant)
		defendant[:health] -= @power
		@exp += 1
	end
end


class Monster < living_thing

	def initialize(name, health, power, type)
		@name = name
		@health = health
		@power = power
		@type = type
	end

	def attack(defendant)
		defendant[:health] -= @power
	end
end


#Create new characters
Raffi = Hero.new("Raffi", 100, 23, ["voice", "spear", "javelin"])
Fizzbuzz = Monster.new("Fizzbuzz", 100, 42, "Dragon")
Shark_Cage = Monster.new("Shark Cage", 100, 14, "Goblin")


