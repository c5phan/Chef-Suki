if (place_meeting(x,y,oPlayer_Side)) {
	o_stewManager.end_level = 1;
	
	for (i = 0; i < 6; i++) {
		if (o_stewManager.name[i] == "stock") {
			got_stock = o_stewManager.inven[i];
		}
		if (o_stewManager.name[i] == "chicken") {
			got_chicken = o_stewManager.inven[i];
		}
		if (o_stewManager.name[i] == "carrot") {
			got_carrot = o_stewManager.inven[i];
		}
		if (o_stewManager.name[i] == "celery") {
			got_celery = o_stewManager.inven[i];
		}
		if (o_stewManager.name[i] == "potato") {
			got_potato = o_stewManager.inven[i];
		}
		if (o_stewManager.name[i] == "ronion") {
			got_ronion = o_stewManager.inven[i];
		}
	}
		
	// determine star
	if (got_stock == o_stewManager.need_stock) {
		point += 0.5;
	}
	if (got_chicken == o_stewManager.need_chicken) {
		point += 0.5;
	}
	if (got_carrot == o_stewManager.need_carrot) {
		point += 0.5;
	}
	if (got_celery == o_stewManager.need_celery) {
		point += 0.5;
	}
	if (got_potato == o_stewManager.need_potato) {
		point += 0.5;
	}
	if (got_ronion == o_stewManager.need_ronion) {
		point += 0.5;
	}
		
	starCount.SF_stars = floor(points); // round down
	room_goto(Cookbook_P1);
} 