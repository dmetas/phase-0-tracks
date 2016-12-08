puts"Enter Hamster name."
hamsterName = gets.chomp
puts"Hamster volume level from 1-10"
volume = gets.chomp
puts"what is the fur color?"
furColor = gets.chomp
puts"Hamster is a good candidate for adoption"
candidate = gets.chomp
puts"estimated age"
age = gets.chomp.to_f
if age == 0.0
	age = nil
end
puts(hamsterName, volume, furColor, candidate,age)
