require_relative 'game_class'

describe Game_Rules do
	let(:game) { Game_Rules.new}
	it "word_array takes word and turns into an array"	do
		expect(game.word_array("Hi")).to eq ["H","i"]
	 end
	it "guessed_letters keeps track of all letters guessed" do
		expect(game.guessed_letters("a")).to eq ["a"]
	end
	it "guess_count keeps track of uniqe letters guessed" do
	game.guessed_letters("h")
	expect(game.guess_count).to eq 1
	end
	it "check answer looks at guessed letters and word array to see if it is included" do
	game.word_array("Hello")
	game.guessed_letters("H")
	expect(game.check_answer).to eq ("H_ _ _ _ ")
	end
end