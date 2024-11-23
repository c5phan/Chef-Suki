// run out of time
if (current == "done") {
	timer--;
}
	
if (timer <= 0) {
	a = min(a+0.015, 1) 
}

if (a == 1) {
	// calculate level stars 
	if (room == QOven) {
		if (!o_dragQuiche.burnt) {
			if (o_dragQuiche.cooked) {
				if ((o_quicheBake.time375 >= 1100 && o_quicheBake.time375 <= 1400) && // leanway
					((o_quicheBake.time400 >= 500 && o_quicheBake.time400 <= 800) && 
					  (o_quicheBake.time425 >= 500 && o_quicheBake.time425 <= 800))) {
					starCount.QBake_stars = 3;
				} else if ((o_quicheBake.time375 >= 600 && o_quicheBake.time400 >= 300) && o_quicheBake.time425 >= 300) {
					starCount.QBake_stars = 2;
				} else {
					starCount.QBake_stars = 1;
				}
			} else { // uncooked
				 if ((o_quicheBake.time375 >= 600 && o_quicheBake.time400 >= 300) && o_quicheBake.time425 >= 300) {
					starCount.QBake_stars = 2;
				} else {
					starCount.QBake_stars = 1;
				}
			}
		} else { // burnt
			starCount.QBake_stars = 0;
		}
	
		// done
		show_debug_message(starCount.QBake_stars);
		room_goto(Cookbook_P2);
	}
}
