if (level_timer > 0 && !pause) {
	level_timer--;
}

if (level_timer == 0){ 
	current = ""; // dummy value
	if (timer > 0) {
		timer--;
	}
}

if (current == "done" || timer <= 0) {
	a = min(a+0.015, 1) // start fadeout when done
}

if (a == 1) {
	// calculate cut stars
	if (room == SSwipe) {
		if (current == "done") {
			starCount.SSwipe_stars = 3;
		} else if (current == "stock" || current == "potato") {
			starCount.SSwipe_stars = 2;
		} else if (current == "ronion" || current == "chicken") { // carrot and ronion
			starCount.SSwipe_stars = 1;
		} else { // carrot
			starCount.SSwipe_stars = 0;
		}
		room_goto(SStir);
	}
	if (room = QSwipe) {
		if (current == "done") {
			starCount.QSwipe_stars = 3;
		} else if (current == "cream" || current == "egg") {
			starCount.QSwipe_stars = 2;
		} else if (curent == "cheese") { 
			starCount.QSwipe_stars = 1;
		} else { //bacon
			starCount.QSwipe_stars = 0;
		}
		room_goto(QStir);
	}
}
