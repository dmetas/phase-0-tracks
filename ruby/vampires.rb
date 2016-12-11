

puts "How many employees will be taking the survey? (please enter a number)"
survey_number = gets.chomp.to_i

while survey_number > 0
	# reset variables
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
	healthcare_input = nil
	bread_input = nil

	# get name and age 
	puts "What is your name?"
	user_name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born"
	person_year = gets.chomp.to_i

	# check age 
	year_check = (year - age).to_i

	if (year_check == person_year) || (year_check == (person_year + 1))
		vaild_age = true
	else	
		valid_age = false 
	end

	# get garlic bread choice, continues asking until valid input
	until (bread_input == "yes") ||  (bread_input == "no")
		puts "Would you like us to order garlic bread for you? (please answer Yes or No)"
		bread_input = gets.chomp
		bread_input.downcase! 
		if bread_input == "yes" 
			garlic_choice = true 
		else 
			garlic_choice = false 
		end 
	end

	# get healthcare choice, continues asking until valid input
	until (healthcare_input == "yes") || (healthcare_input == "no")
		puts "Would you like to enroll in our healthcare plan? (please answer Yes or No)"
		healthcare_input = gets.chomp
		healthcare_input.downcase!
		if healthcare_input == "yes" 
			healthcare_choice = true 
		else 
			healthcare_choice = false 
		end 
	end
	
	# get alergies from user
	alergies_loop = nil
	puts "Please name any alergies one at a time (type done when finished)"
	
	until (alergies_loop == "done") || (alergies_loop == "sunshine")
		alergies_loop = gets.chomp
		alergies_loop = alergies_loop.downcase
	end

	# output summary of survery
	puts "Results of Survey:"
	puts "Your name is: #{user_name}"
	puts "You want garlic bread: #{bread_input}"
	puts "You want to enroll in healthcare: #{healthcare_input}"

	# determine if vampire
	if alergies_loop == "sunshine"
		puts "Probably vampire"
	elsif (user_name == "Drake Cula") || (user_name == "Tu Fang")
		puts "Defintely a vampire."
	elsif (valid_age == true) && (garlic_choice == true) || (healthcare_choice == true)
		puts "Probably not a vampire."
	elsif (valid_age == false) && (garlic_choice == false) || (healthcare_choice == false)
		puts "Probably a vampire."
	elsif (valid_age == false) && (garlic_choice == false) && (healthcare_choice == false)
		puts "Almost certainly a vampire"
	else
		puts "Results inconclusive"
	end

	# keep going if there are more surveys to give
	survey_number = survey_number - 1
end

puts "Actually, never mind! What do these questions Have to do with anything? Let's all be friends."