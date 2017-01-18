//Check to see if page will link.
console.log("test");

function border(event){
	console.log("Event ran on mouse over");
	console.log(event);
	if(event.type == "mouseover"){
	event.target.style.border = "5px solid red";
	}
	else {
	event.target.style.border = "";
}
}

function addText() {
  var paragraph = document.createElement("p");

  var text = document.createTextNode("This is some new text!");
  paragraph.appendChild(text);

  var div = document.getElementById("new-content-div");
  div.appendChild(paragraph);
}

function changeClass(event){
	console.log(event);
	var elements =
	document.getElementsByClassName("sample-class");
	var e;
	for (var i = 0; i<elements.length; i++){
		elements[i].style.border = "2px solid red";
	}
}

var photo = document.getElementById("Ranger");
photo.style.width = "255px";
photo.style.height = "auto";
photo.addEventListener("mouseover", border);
photo.addEventListener("mouseout", border);


var button = document.getElementById("create_text");
button.addEventListener("click", addText);

var button2 = document.getElementById("class-alteration");
button2.addEventListener("click", changeClass);