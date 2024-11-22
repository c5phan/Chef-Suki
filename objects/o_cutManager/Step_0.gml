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
	if (room == Scut) {
		if (currentCut == "done") {
			starCount.SCut_stars = 3;
		} else if (currentCut == "ronion" || currentCut == "chicken") {
			starCount.SCut_stars = 2;
		} else {
			starCount.SCut_stars = 1;
		}
		show_debug_message(starCount.SCut_stars);
		room_goto(SPotSwipe);
	}
}
