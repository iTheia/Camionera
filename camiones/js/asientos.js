function imagen(id){
	let value = document.getElementById(id).value;
	if (value == 0) {
		document.getElementById('img'+id).src = "../fonts/Asiento2.png";
		document.getElementById(id).value = 1;
	}
	else if (value == 1) {
		document.getElementById('img'+id).src = "../fonts/Asiento.png";
		document.getElementById(id).value = 0;
	}
	
}