if (level_timer > 0 && !pause) {
	level_timer--;
}

// finish pouring or run out of time
if (level_timer == 0 || pourOpacity >= 1) {
	timer--;
}
	

if (timer <= 0) {
	a = min(a+0.015, 1) 
}

if (a == 1) {
	// calculate level stars based on opacity
	if (pourOpacity >= 1) {
		starCount.QPour_stars = 3;
	} else if (pourOpacity > 0.5) {
		starCount.QPour_stars = 2;
	} else {
		starCount.QPour_stars = 1;
	}
	
	room_goto(QOven);
}
