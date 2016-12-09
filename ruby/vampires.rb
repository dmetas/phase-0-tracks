wolves_like_sunshine = true
wolves_like_garlic = true
wolves_use_healthcare = true
vampires_like_sunshine = false
vampires_like_garlic = false
vampires_use_healthcare = false
valid_age = nil
year = 2016
garlic_choice = nil
healthcare_choice = nil
bread = nil
healthcare = nil


puts "How many employees will be taking the survey? (please enter a number)"
survey_number = gets.chomp.to_i

while survey_number > 0
	puts "what is your name?"
	user_name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "what year were you born"
	person_year = gets.chomp.to_i

	bread = nil
	
	until bread == "yes" ||  bread == "no"
	puts "Would you like us to order garlic bread for you? (please answer Yes or No)"
	bread = gets.chomp
	bread = bread.downcase
	end

	healthcare = nil
	until healthcare == "yes" || healthcare == "no"
	puts "would you like to enroll in our healthcare plan? (please answer Yes or No"
	healthcare = gets.chomp
	healthcare = healthcare.downcase
	end

	year_check = year - age
	year_check.to_i

	if year_check == person_year || year_check ==  person_year + 1
		vaild_age = true
	else	
		valid_age = false 
	end

	if bread == "yes"
		garlic_choice = true
	else
		garlic_choice = false
	end

	if healthcare != "yes"
		healthcare_choice = false
	else
		healthcare_choice = true
	end
	
	alergies_loop = nil
	puts "please name any alergies one at a time (type done when finished)"
	
	until alergies_loop == "done" || alergies_loop == "sunshine"
		alergies_loop = gets.chomp
		alergies_loop = alergies_loop.downcase
	end
	
	puts "results of Survey:"
	puts "your name is: #{user_name}"
	puts "you want garlic bread: #{bread}"
	puts "you want to enroll in healthcare: #{healthcare}"
	
	if alergies_loop == "sunshine"
		puts "probably vampire"
	elsif user_name == "Drake Cula" || user_name == "Tu Fang"
		puts "Defintely a vampire."
	elsif valid_age == true && garlic_choice == true || healthcare_choice == true
		puts "probably not a vampire."
	elsif valid_age == false && garlic_choice == false || healthcare_choice == false
		puts "probably a vampire."
	elsif valid_age == false && garlic_choice == false && healthcare_choice == false
		puts "almost certainly a vampire"
	else
		puts "results inconclusive"
	end
	survey_number = survey_number -1
end
