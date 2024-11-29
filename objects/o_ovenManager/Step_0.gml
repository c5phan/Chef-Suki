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
		startEnd = 1;
	}
	if (room == MOven1) {
		if (!o_dragMac.burnt) {
			if (o_dragMac.cooked) {
				if ((((o_macBake1.time350 >= 500 && o_macBake1.time350 <= 800) && 
					  (o_macBake1.time375 >= 500 && o_macBake1.time375 <= 800)) && // leanway
					((o_macBake1.time400 >= 500 && o_macBake1.time400 <= 800) && 
					  (o_macBake1.time425 >= 500 && o_macBake1.time425 <= 800)))&&
					  (o_macBake1.time450 >= 500 && o_macBake1.time450 <= 800)) {
					starCount.MOven1_stars = 3;
				} else if (((o_macBake1.time350 >= 300 && o_macBake1.time375 >= 300) && 
						(o_macBake1.time400 >= 300 && o_macBake1.time425 >= 300)) && 
						o_macBake1.time450 >= 300) {
					starCount.MOven1_stars = 2;
				} else {
					starCount.MOven1_stars = 1;
				}
			} else { // uncooked
				 if (((o_macBake1.time350 >= 300 && o_macBake1.time375 >= 300) && 
					(o_macBake1.time400 >= 300 && o_macBake1.time425 >= 300)) && 
					o_macBake1.time450 >= 300) {
					starCount.MOven1_stars = 2;
				} else {
					starCount.MOven1_stars = 1;
				}
			}
		} else { // burnt
			starCount.MOven1_stars = 0;
		}
		
		room_goto(PlaceInstruct);
	}
	if (room == MOven2) {
		// calculate stars
		if (!o_dragMacCheese.burnt) {
			if (o_dragMacCheese.cooked) {
				if (((o_macBake2.time400 >= 500 && o_macBake2.time400 <= 800) && 
					  (o_macBake2.time450 >= 500 && o_macBake2.time450 <= 800)))  {
					starCount.MOven_stars = 3;
				} else if (o_macBake2.time400 >= 300 && o_macBake2.time450 >= 300) {
					starCount.MOven_stars = 2;
				} else {
					starCount.MOven_stars = 1;
				}
			} else { // uncooked
				 if (o_macBake2.time400 >= 300 && o_macBake2.time450 >= 300) {
					starCount.MOven_stars = 2;
				} else {
					starCount.MOven_stars = 1;
				}
			}
		} else { // burnt
			starCount.MOven_stars = 0;
		}
		
		show_debug_message("oven: " + string(starCount.MOven_stars));
		startEnd = 1;
	}
}

if (startEnd) {
	endTimer--;
	if (endTimer <= 0) {
		b = min(b+0.015,1);
	}
	if (b == 1) {
		if (room == QOven) {
			room_goto(Cookbook_P2);
		}
		if (room == MOven2) {
			room_goto(Cookbook_P3);
		}
	}
}
