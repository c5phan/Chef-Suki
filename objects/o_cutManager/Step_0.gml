if (level_timer > 0 && !pause) {
	level_timer--;
}

if (level_timer == 0){ 
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
		} else if (currentCut == "ronion" || currentCut == "celery") {
			starCount.SCut_stars = 2;
		} else if (currentCut == "potato" || currentCut == "chicken") {
			starCount.SCut_stars = 1;
		} else { // carrot
			starCount.SCut_stars = 0;
		}
		show_debug_message("cut: " + string(starCount.SCut_stars));
		room_goto(SwipeInstruct);
	}
	if (room == QCut) {
		if (currentCut == "done") {
			starCount.QCut_stars = 3;
		} else if (currentCut == "bpepper") {
			starCount.QCut_stars = 2;
		} else if (currentCut == "cheese") {
			starCount.QCut_stars = 1;
		} else { // bacon
			starCount.QCut_stars = 0;
		} 
		show_debug_message("cut: " + string(starCount.QCut_stars));
		room_goto(QSwipe);
	}
	
	if (room == MCut) {
		if (currentCut == "done") {
			starCount.MCut_stars = 3;
		} else if (currentCut == "broccoli") {
			starCount.MCut_stars = 2;
		} else if (currentCut == "bacon") {
			starCount.MCut_stars = 1;
		} else { // cheese
			starCount.MCut_stars = 0;
		} 
		show_debug_message("cut: " + string(starCount.MCut_stars));
		room_goto(MSwipe1);
	}
}
