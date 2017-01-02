class Santa
	def initialize (gender, ethnicity,age = 0)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak 
		puts "Ho, Ho, Ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies (cookie_type)
		puts "that was a good #{cookie_type}"
	end


end
santas = []
genders = ["agender", "female", "bigender", "male", "gender fluid","trans gender", "undecided", "unknown", "n/a"]
example_ethnicities = ["black", "Latino", "White", "Japanese-African", "prefer not to say", "Mystical Creature (Unicorn)", "N/A"]
example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end
clause = Santa.new("Male", "Japanese")
clause.speak
clause.eat_milk_and_cookies("snickerdoodle")

p santas