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

var names = ["David", "Kat", "Bob"];
console.log(longest_string(names));