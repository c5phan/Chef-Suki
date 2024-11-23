if (level_timer > 0 && !pause) {
	level_timer--;
}

if (level_timer == 0){ 
	currentCut = ""; // dummy value
	timer--;
}

if (currentCut == "done" || timer <= 0) {
	a = min(a+0.015, 1) // start fadeout when done
}

if (a == 1) {
	// calculate cut stars
	if (room == SCut) {
		if (currentCut == "done") {
			starCount.SCut_stars = 3;
		} else if (currentCut == "ronion" || currentCut == "chicken") {
			starCount.SCut_stars = 2;
		} else if (currentCut == "potato") {
			starCount.SCut_stars = 1;
		} else { // carrot
			starCount.SCut_stars = 0;
		}
		room_goto(SSwipe);
	}
	if (room == QCut) {
		if (currentCut == "done") {
			starCount.QCut_stars = 3;
		} else if (currentCut == "cheese") {
			starCount.QCut_stars = 2;
		} else { // bacon
			starCount.QCut_stars = 1;
		}
		room_goto(QSwipe);
	}
}
