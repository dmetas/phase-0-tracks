#create symbols for variables
array = [:name, :age, :num_children, :decor_style, :square_feet]
#create empty hash
hash = {} 
#ask for user input and store
array.each do |key|
  puts "#{key}?"
  #stored user data
  value = gets.chomp 
  hash[key] = value 
end 
#displays hash to user
hash.each {|key,value| puts "#{key} is #{value}"}
#asks user if anything needs to be changed
puts "If everything is correct type none or type in the subject you want to change"
user_answer = gets.chomp

unless user_answer == "none"
	puts "please enter the corrected value"
	value = gets.chomp
	#change user input from string to symbol and input symbol
	hash[user_answer.to_sym] = value
end

#convert data types inside hash
hash[:age]=hash[:age].to_i
hash[:num_children] = hash[:num_children].to_i
hash[:square_feet] = hash[:square_feet].to_f

#print final hash to user
puts hash 
#end of program