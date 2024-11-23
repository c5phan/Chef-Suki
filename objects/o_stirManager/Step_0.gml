if (level_timer > 0 && !pause) {
	level_timer--;
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
	if (room == SStir) {
		if (current == maxStep) {
			starCount.SStir_stars = 3;
		} else if (current > floor(maxStep/2)) {
			starCount.SStir_stars = 2;
		} else {
			starCount.SStir_stars = 1;
		}
		room_goto(Cookbook_P1);
	}
	
	if (room == QStir) {
		room_goto(Cookbook_P2);
	}
}