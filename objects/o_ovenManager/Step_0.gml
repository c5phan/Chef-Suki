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
		show_debug_message("oven: " + string(starCount.QBake_stars));
		room_goto(Cookbook_P2);
	}
	if (room == MOven) {
		// calculate stars
		if (!o_dragMac.burnt) {
			if (o_dragMac.cooked) {
				if ((((o_macBake.time350 >= 500 && o_macBake.time350 <= 800) && 
					  (o_macBake.time375 >= 500 && o_macBake.time375 <= 800)) && // leanway
					((o_macBake.time400 >= 500 && o_macBake.time400 <= 800) && 
					  (o_macBake.time425 >= 500 && o_macBake.time425 <= 800)))&&
					  (o_macBake.time450 >= 500 && o_macBake.time450 <= 800)) {
					starCount.MBake_stars = 3;
				} else if (((o_macBake.time350 >= 300 && o_macBake.time375 >= 300) && 
						(o_macBake.time400 >= 300 && o_macBake.time425 >= 300)) && 
						o_macBake.time450 >= 300) {
					starCount.MBake_stars = 2;
				} else {
					starCount.MBake_stars = 1;
				}
			} else { // uncooked
				 if (((o_macBake.time350 >= 300 && o_macBake.time375 >= 300) && 
					(o_macBake.time400 >= 300 && o_macBake.time425 >= 300)) && 
					o_macBake.time450 >= 300) {
					starCount.MBake_stars = 2;
				} else {
					starCount.MBake_stars = 1;
				}
			}
		} else { // burnt
			starCount.MBake_stars = 0;
		}
		
		show_debug_message("oven: " + string(starCount.MOven_stars));
		room_goto(Cookbook_P3);
	}
}
