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
	if (room == SPotSwipe) {
		if (current == "done") {
			starCount.SSwipe_stars = 3;
		} else if (current == "stock" || current == "chicken" || current == "potato") {
			starCount.SSwipe_stars = 2;
		} else { // carrot and ronion
			starCount.SSwipe_stars = 1;
		}
		show_debug_message(starCount.SSwipe_stars);
		room_goto(SPotStir);
	}
}
