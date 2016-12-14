def say_goodbye
	puts  "Goodbye nice talkign with you."
	yield("Bob", "Tinna")
end
say_goodbye {|name1,name2| puts "Terrible to see you #{name1} and #{name2}"}


customer_names = ["Bob", "James", "Marry", "Eletabeth", "Dog"]
puts "origonal data:"
p customer_names

customer_names.each do |x| 
	puts "the customer name is: #{x}"
end


customer_age do [24,33,21,67,89]
puts "origional data:"
p customer_age

customer_age = [24,33,21,67,89]
puts "origional data:"
p customer_age
customer_age.map! do |age| 
	puts age
	age+=1
end
puts "after .map call:"
p customer_age


fruit_color = {
	:apple => "red",
	:Banana => "yellow",
	:orange => "orange",
	:grape => "purple"
}

fruit_color.each do |fruit, color|
	puts "the #{fruit} is #{color}"
end


