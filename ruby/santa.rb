class Santa
	
	attr_reader :age, :ethnicity
	attr_accessor :gender

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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at (reindeer_name)
		@reindeer_ranking.delete_if{|reindeer| reindeer == reindeer_name}
		@reindeer_ranking << reindeer_name
		p @reindeer_ranking
	end
end

santas = []
genders = ["agender", "female", "bigender", "male", "gender fluid","trans gender", "undecided", "unknown", "n/a"]
ethnicities = ["black", "Latino", "White", "Japanese-African", "prefer not to say", "Mystical Creature (Unicorn)", "N/A"]
age = (0..140).to_a
10000.times do
	santas << Santa.new(genders.sample, ethnicities.sample, age.sample)
end

p santas

clause = Santa.new("Male", "Japanese")
clause.speak
clause.eat_milk_and_cookies("snickerdoodle")
puts clause.age
clause.celebrate_birthday
puts clause.ethnicity
puts clause.age
clause.gender = "female"

puts "clause gender: #{clause.gender} age: #{clause.age}"
