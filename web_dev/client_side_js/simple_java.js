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
var photo = document.getElementById("Ranger");
photo.style.width = "255px";
photo.style.height = "auto";
photo.addEventListener("mouseover", border)
photo.addEventListener("mouseout", border)