#define method
def name_changer (name)
  #variables to check index against
  vowels = ['a','e','i','o','u']
  consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  #change string vaule to lowercase for index matching
  name.downcase!
  # create new variable
  new_string = ""
  # change string into individual letters
  name.each_char do |letter|
    #check if letter is vowel
    if vowels.include?(letter)
      #find index of letter in vowels and move index forward one
      new_index = (vowels.index(letter) + 1) % (vowels.length)
      #add forwarded index to string.
      new_string += vowels[new_index]
    elsif letter == " "
      new_string += " "
    else 
    #move consonant index forward
      new_index = (consonants.index(letter) + 1) %  (consonants.length)
      new_string += consonants[new_index]
    end
  end
  #split name 
  return new_string.split(' ').map!{|name| name.capitalize}.reverse.join(' ')
end

name_changer("Dylan Metas")