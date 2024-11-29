if (place_meeting(x,y,oPlayer_Side)) {
	o_macManager.end_level = 1;
	
	for (i = 0; i < 6; i++) {
		if (o_macManager.name[i] == "pasta") {
			got_pasta = o_macManager.inven[i];
		}
		if (o_macManager.name[i] == "cheese") {
			got_cheese = o_macManager.inven[i];
		}
		if (o_macManager.name[i] == "broccoli") {
			got_broccoli = o_macManager.inven[i];
		}
		if (o_macManager.name[i] == "milk") {
			got_milk = o_macManager.inven[i];
		}
		if (o_macManager.name[i] == "butter") {
			got_butter = o_macManager.inven[i];
		}
		if (o_macManager.name[i] == "bacon") {
			got_bacon = o_macManager.inven[i];
		}
	}
		
	entered = 1;
} 

if (entered) {
	a = min(a+0.015, 1);
}

if (a == 1) {
	// determine star
	if (got_pasta == o_macManager.need_pasta) {
		point += 0.5;
	}
	if (got_cheese == o_macManager.need_cheese) {
		point += 0.5;
	}
	if (got_broccoli == o_macManager.need_broccoli) {
		point += 0.5;
	}
	if (got_milk == o_macManager.need_milk) {
		point += 0.5;
	}
	if (got_butter == o_macManager.need_butter) {
		point += 0.5;
	}
	if (got_bacon == o_macManager.need_bacon) {
		point += 0.5;
	}
		
	starCount.MF_stars = floor(point); // round down
	
	show_debug_message("fridge: " + string(starCount.MF_stars));
	room_goto(MCut);
}