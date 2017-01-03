=begin
create class for game
	create word array to be guessed
		check guessed letter against word array
			store guessed letter in guessed letter array 
			use unique array items to determine number of guesses so multiple guesses of same letter are excluded

	user will get word array length of guesses
	Display total length of the word in _ 
		if user guesses a letter that is correct display that letter instead of _
	If user guesses all letters in the array display victory message
	If user guesses past array length of word display Loss message

=end

#game class

class Game_Rules
	attr_reader :guess_count, :word_to_guess_array, :answer

	def initialize 
		@guessed_letters_array = []
	end

	def word_array(word)
		@word_to_guess_array = word.split("")
	end

	def guessed_letters(letter)
		@guessed_letters_array << letter
	end

	def guess_count
		@guess_count = @guessed_letters_array.uniq.length
	end

	def check_answer
		@answer = ""
		@word_to_guess_array.each do |letter|
			if @guessed_letters_array.include?(letter)
				@answer += letter
			else 
				@answer += "_ "
			end
		end
		puts @answer
	  return @answer
	end

end


#user Interface
game = Game_Rules.new
puts "player one please enter your word"
player1_word = gets.chomp
game.word_array(player1_word)

while game.guess_count <= game.word_to_guess_array.length
puts "please enter the letter you would like to guess"
 user_guess = gets.chomp
 game.guessed_letters(user_guess)
 game.check_answer
  if game.answer.include?("_") == false
    puts "Good Job you won"
    break
  end
  if game.guess_count == game.word_to_guess_array.length
    puts "You Lose try harder next time"
    break
  end
end

