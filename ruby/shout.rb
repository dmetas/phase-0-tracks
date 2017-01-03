=begin
module Shout

	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "!!!" + " :)"
	end
end

puts Shout.yell_happily( "I'm so happy")
puts Shout.yell_angrily("I'm so angry")
=end
module Shout
	def angry_shout(text)
		text + "!!!"
	end
end

class Person
	include Shout
end

class Monkey
	include Shout
end

james = Person.new
puts james.angry_shout("SO ANGRY")
monkey = Monkey.new
puts monkey.angry_shout("NOISE")