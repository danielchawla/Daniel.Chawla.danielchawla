ingredients = {
	"pizza" => ["cheese", "dough", "tomato sauce"],
	"chicken alfredo" => ["linguine", "cheese", "milk", "flour", "butter", "chicken"],
	"brownies" => ["cocoa", "butter", "flour", "milk", "chocolate chips", "sugar"]
}



recipes = {
	"pizza" => {
		description: "a dish of Italian origin consisting of a flat, round base of dough baked with a topping of tomato sauce and cheese, typically with added meat or vegetables.",
		ingredients: ingredients['pizza'],
		steps: "do this, then that"
	},
	"chicken alfredo" => {
		description: "chicken in a white pasta sauce",
		ingredients: ingredients['chicken alfredo'],
		steps: "do this, then that"
	},
	"brownies" => {
		description: "a small square of rich and typically chocolate cake",
		ingredients: ingredients['brownies'],
		steps: "do this, then that"
	}
}

puts "#{recipes['pizza'][:ingredients][1]}"




