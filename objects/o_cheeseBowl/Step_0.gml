if (level_timer > 0 && !pause) {
	level_timer--;
}

if (level_timer == 0){ 
	if (timer > 0) {
		timer--;
	}
}

if (numHits == 6 || timer <= 0) {
	a = min(a+0.015, 1) // start fadeout when done
}

if (a == 1) {
	// calculate points
	if (numHits == 6) {
		starCount.MPlace_stars = 3;
	} else if (numHits >= 4) {
		starCount.MPlace_stars = 2;
	} else if (numHits >= 2) {
		starCount.MPlace_stars = 1;
	} else {
		starCount.MPlace_stars = 0;
	}
	
	room_goto(MOven);
}