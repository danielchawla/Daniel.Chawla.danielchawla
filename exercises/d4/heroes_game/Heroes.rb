hero = {
	name: "raffi",
	health: 100,
	power: 100,
	items: ["sword", "banana phone", "car"],
	exp: 0
}

monsters = [
	monster_one = {
		name: "Salmanella",
		health: 100,
		power: 100,
		type: "Disease"
	},
	monster_two = {
		name: "Fizzbuzz",
		health: 100,
		power: 60,
		type: "Dragon"
	},
	monster_three = {
		name: "Shark Cage",
		health: 1,
		power: 30,
		type: "Goblin"
	}
]

def attack(attacker, victim)
	victim[:health] -= attacker[:power]
	unless attacker[:exp].nil?
		attacker[:exp] += 1
	end
end
