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
		show_debug_message("stir: " + string(starCount.SStir_stars));
		
		// do end
		startEnd = 1;
	}
	
	if (room == QStir) {
		if (current == maxStep) {
			starCount.QStir_stars = 3;
		} else if (current > floor(maxStep/2)) {
			starCount.QStir_stars = 2;
		} else if (current > 0) {
			starCount.QStir_stars = 1;
		} else {
			starCount.QStir_stars = 0;
		}
		show_debug_message("stir: " + string(starCount.QStir_stars));
		room_goto(QPour);
	}
	
	if (room == MStir1) {
		if (current == maxStep) {
			starCount.MStir1_stars = 3;
		} else if (current > floor(maxStep/2)) {
			starCount.MStir1_stars = 2;
		} else if (current > 0) {
			starCount.MStir1_stars = 1;
		} else {
			starCount.MStir1_stars = 0;
		}
		show_debug_message("stir: " + string(starCount.MStir1_stars));
		room_goto(MSwipe2);
	}
	
	if (room == MStir2) {
		if (current == maxStep) {
			starCount.MStir2_stars = 3;
		} else if (current > floor(maxStep/2)) {
			starCount.MStir2_stars = 2;
		} else if (current > 0) {
			starCount.MStir2_stars = 1;
		} else {
			starCount.MStir2_stars = 0;
		}
		show_debug_message("stir: " + string(starCount.MStir2_stars));
		room_goto(MPour);
	}
}

if (startEnd) {
	endTimer--;
	if (endTimer <= 0) {
		b = min(b+0.015, 1) 
	} 
	if (b == 1) {
		room_goto(Cookbook_P1);
	}
}
	