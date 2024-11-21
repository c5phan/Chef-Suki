if (currentCut == "done") {
	a = min(a+0.015, 1) // start fadeout when done
}

if (a == 1) {
	room_goto(SPot);
}
