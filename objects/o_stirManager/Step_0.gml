if (level_timer > 0 && !pause) {
	level_timer--;
}

if (room == SPotStir) { // this bound is same for all pot stir rooms
	maxStep = 20;
	boundX1 = 340;
	boundX2 = 1200;
	boundY1 = 40;
	boundY2 = 320;
}

// if the player finishes all stirs, or the level timer runs out
if (current == maxStep || destroyed) {
	timer--;
}

if (level_timer == 0 && !destroyed) {
	instance_destroy(o_stirGoal);
	destroyed = 1;
}
	

if (timer <= 0) {
	a = min(a+0.015, 1) 
}

if (a == 1) {
	// calculate level stars
	if (room == SPotStir) {
		if (current == maxStep) {
			starCount.SStir_stars = 3;
		} else if (current > floor(maxStep/2)) {
			starCount.SStir_stars = 2;
		} else {
			starCount.SStir_stars = 1;
		}
		show_debug_message(starCount.SStir_stars);
		room_goto(Cookbook_P1);
	}
}
