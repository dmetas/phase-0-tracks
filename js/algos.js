//compare legnths of array items
// for each item in array find the length
// return longest string length in array

function longest_string(array){
	var current_longest = array[0];
	var current_length = current_longest.length
	for (var i = 0; i<array.length-1; i++){
		if (array[i].length > current_length){
			current_longest = array[i];
			current_length = array[i].length;
		}
	}
	return current_longest;
}

function value_check (obj1, obj2){
	for (var key in obj1) {
		if (obj1[key] == obj2[key]) {
			return true;
		}
	}
	return false;
}

function test_generator(number){
	var words = [];
	var alp = "abcdefghijklmnopqrstuvwxyz".split("");
	while(words.length < number) {
		var length = Math.floor(Math.random() * 10) + 1;
		var new_word = "";
		for (var i = 0; i <= length; i++) {
			var new_letter = Math.floor(Math.random() * 25) + 0;
			new_word += alp[new_letter];
		}
		words.push(new_word);
	}
	return words;
}


//driver code
var names = ["David", "Kat", "Bob"];
console.log(longest_string(names));
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};
console.log(value_check(obj1, obj2));
var steven = {name: "Steven", age: 54};
var tamir = {name: "Tamir", age: 5};
console.log(value_check(steven, tamir));
var test_data = test_generator(10);
console.log(test_data);
console.log(longest_string(test_data));
