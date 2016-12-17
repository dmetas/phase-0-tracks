#Pseudocode Release 0 
#Create an Array
#INPUT - Array (integers)
#ACTION - Search for integer w/in array 
#OUTPUT - index or nil 
#Set a value to a number
  #x  = 0
#Put input here  
#Create a method that looks for an integer 
  #by its value, return index 
#print method that shows index 

#while loop to iterate until TRUE
#.each (use exit out)
#return on .each????
#conditional if true, can exit out

#Release 0

def search_tool (arr, int)
 
  count = 0  

  while count < arr.length 
    if arr[count] == int  
      puts count 
      count = arr.length 
  end 
  count += 1 
end

end 

array = [7, 1, 4, 6, 8]

p search_tool(array, 9)

#Release 1

#def fib (num)
# array = [0,1]
 #until array.length = num do
  # push_value = (array[-1]+array[-2])
 #array.push(push_value)
 #print array
#end
#end

#fib(6)
def fib(num)
 array = [0,1]
 count = 0
until count == num-1 do
 
 if array.length <= num-1
 value = array[-1] + array[-2]
 array.push(value)
 elsif array[-1] == 218922995834555169026
 puts "it matches"
 else
 p array
 end
 count +=1
end 
end
fib(100)

#Release 2
def InsertionSort(a)

 a.each_with_index do |item, index|
   i = index - 1 
         
   while i>=0
     break if item >= a[i]
     a[i+1] = a[i]
     i -= 1
   end 
 
   a[i+1] = item
 
 end 
end

array = [5,4,3,3,2,1]
InsertionSort(array)