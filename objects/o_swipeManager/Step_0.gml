if (level_timer > 0 && !pause) {
	level_timer--;
}

if (level_timer == 0){ 
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
		} else if (current == "stock" || current == "celery" || current == "potato") {
			starCount.SSwipe_stars = 2;
		} else if (current == "ronion" || current == "chicken") { // carrot and ronion
			starCount.SSwipe_stars = 1;
		} else { // carrot
			starCount.SSwipe_stars = 0;
		}
		show_debug_message("swipe: " + string(starCount.SSwipe_stars));
		room_goto(SStir);
	}
	if (room == QSwipe) {
		if (current == "done") {
			starCount.QSwipe_stars = 3;
		} else if (current == "cream" || current == "egg") {
			starCount.QSwipe_stars = 2;
		} else if (current == "cheese") { 
			starCount.QSwipe_stars = 1;
		} else { //bacon
			starCount.QSwipe_stars = 0;
		}
		show_debug_message("swipe: " + string(starCount.QSwipe_stars));
		room_goto(QStir);
	}
	
	if (room == MSwipe1) {
		if (current == "done") {
			starCount.MSwipe1_stars = 3;
		} else if (current == "milk") {
			starCount.MSwipe1_stars = 2;
		} else if (current == "cheese") { 
			starCount.MSwipe1_stars = 1;
		} else { // butter
			starCount.MSwipe1_stars = 0;
		}
		show_debug_message("swipe: " + string(starCount.MSwipe1_stars));
		room_goto(MStir1);
	}
	if (room == MSwipe2) {
		if (current == "done") {
			starCount.MSwipe2_stars = 3;
		} else if (current == "pasta") {
			starCount.MSwipe2_stars = 2;
		} else if (current == "broccoli") { 
			starCount.MSwipe2_stars = 1;
		} else { // bacon
			starCount.MSwipe2_stars = 0;
		}
		show_debug_message("swipe: " + string(starCount.MSwipe2_stars));
		room_goto(MStir2);
	}
}
