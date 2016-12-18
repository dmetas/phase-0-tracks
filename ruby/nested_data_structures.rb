warehouse = {
	equipment: {
		forklifts: ["j1","j2","j3","j4"],
		ride_alongs: ["g1","g2","g3","g11"]
	},
	products: {
		toys: {
			balls:{
				cat_ball:["small","large"],
				dog_ball:["large","medium","small"]
			}
		},
		cat_food:{
			cans: ["nulo","origin"],
			bags: ["nulo","origin","nutro"]
		}
	},
	safety: {
		medical:["bandaids","peroxide","scissors"]
	}
}

puts warehouse[:products][:toys][:balls][:dog_ball][-1].capitalize
puts warehouse[:safety][:medical][0]
puts warehouse[:equipment][:forklifts][2]
puts warehouse[:products][:cat_food][:cans][1].upcase