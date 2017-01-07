var horse_names = ["Ed", "Tom", "Brittany", "Bob"];
var horse_color = ["Green", "Brown", "Yellow","Red"];
horse_names.push("Mr. Whiskers");
horse_color.push("Blue");
console.log(horse_names);
console.log(horse_color);
var horses = {}
for (var i = 0; i < horse_names.length; i ++) {
	 horses[horse_names[i]] = horse_color[i];
}
console.log(horses)