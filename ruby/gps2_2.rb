=begin
Pseudocode:
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define create grocery list method
  # Create empty hash inside of grocery list method
  # pass in a string as an argument for the create grocery list method
  # set a variable to the string passed in.split(' ')
  # set default quantity = 4
  # use .each on our variable
  # store each string/item as a key in our hash
  # store the default quantity as the value
  # print the list/hash to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] (Hash)
# create a new_list variable that will be equal to create_list("") method

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create an add to item method that takes, the new_list as an argument, a new item name and an optional quantity as an argument.
# output: an updated new_list with the added item

# Method to remove an item from the list
# input: create a remove item method that takes two parameters, list parameter, and item parameter
# steps: attempt to use the .include method on our list to see if the item we want to remove exists in the list.
# if the item does exist in the list then .delete that item key from the list
# else print 'the item does not exist and exit the method'
# output: A revised list

# Method to update the quantity of an item
# input: create update item method that takes three parameters, list parameters, item parameter, and new quantity parameter
# steps: use .include to check to see if the item passed in as an argument is in the list and if it is in the list then update that item with the new quantity passed into that method as an argument
# output: The item with the updated quantity

# Method to print a list and make it look pretty
# input: create method where key and value are passed in as string
# steps: list.each do |key,value| to iterate over the list/new hash keys and values and use interpolation to print these keys and values in a sentence.
# output: A sentence with key and values for all of the items in our list.
=end


def create_grocery_list(string)
  new_list = {}
  items = string.split(" ")
  quantity = "qty:4"
  items.each do |item|
    new_list[item] = quantity
  end
puts new_list
new_list
end

grocery_list = create_grocery_list("apples bannana dogfood")


def add_item(list,item,quantity=4)
  list[item] = quantity
end

add_item(grocery_list,"lemonade", "qty:2")
add_item(grocery_list, "tomotoes", "qty:3")
add_item(grocery_list, "onions", "qty:1")
add_item(grocery_list, "ice cream", "qty:4")
p grocery_list


def remove_item(list, item)
  if list.include?(item)
    list.delete(item)
  else
    puts "not on the list"
  end
end

remove_item(grocery_list, "lemonade")
#p grocery_list

def update_quantity(list,item,quantity)
  if list.include?(item)
    list[item] = quantity
  end
end

update_quantity(grocery_list,"ice cream", "qty:1")
#p grocery_list

def print_grocery_list(list)
  puts "Grocery List:"
  list.each do |key, value|
    puts " Buy some #{key} #{value} "
  end
end
print_grocery_list(grocery_list)
#p grocery_list

#I learned that a good psuedocode will greatly assist in writting the actual code for the program.
#the biggest trade off between a hash and an array is that the hash allows for us to put the item as the Key where an array we would need a list array and a quantity array
#a method by default will return the last called item unlessexplicity told to return something else
#anything can be passed into a method variable global and local arrays hashes objects in genreral. 
#you can pass information between methods with a variable. 
#most of the information was solidified using multiple methods and passing information to those methods helped me better understand how methods work I think I understand the process very well at this point. 
