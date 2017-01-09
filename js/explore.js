//take a the word hello and reverse the order to get olleh
//take hello and break it a loop to itterate over each letter
//take the individual characters and add them together from the last position to the first

function word_reverse(word) {
	var new_word = "";

	for (var i = (word.length - 1); i >= 0; i--){
	 	new_word += word[i];
	}
	return new_word;
}

console.log(word_reverse("Hello World"));

if (1==1){
	console.log(word_reverse("1 = 1"));
}