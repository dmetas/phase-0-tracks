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

#iteration number 1
numbers = [1,2,3,3,3,4,5,]
numbers.delete 3

fruits_price2 = {
  :apple => 3,
  :banana => 2,
  :pear => 3
}
fruits_price2.delete_if{|k,v| v == 3}

#iteration number 2
number_list2 = [1,2,3,4,5,6,7,8,9,10]
number_list2.select{|number| number.even?}

fruits_price = {
  :apple => 3,
  :banana => 2,
  :pear => 3
}
fruits_price.select {|k,v| v == 3}

#iteration number 3
names = ["bob", "bob", "bob", "james"]
names.uniq!

fruits_price3 = {
  :apple => 3,
  :banana => 2,
  :pear => 3,
  :peach => 2
}
fruits_price3.reject!{|k,v| v==2}

#iteration number 4





