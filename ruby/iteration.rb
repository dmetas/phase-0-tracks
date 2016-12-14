def say_goodbye
	puts  "Goodbye nice talkign with you."
	yield("Bob", "Tinna")
end
say_goodbye {|name1,name2| puts "Terrible to see you #{name1} and #{name2}"}