// run out of time
if (current == "done") {
	timer--;
}
	
if (timer <= 0) {
	a = min(a+0.015, 1) 
}

if (a == 1) {
	// calculate level stars 
	if (o_dragQuiche.cooked) {
		starCount.QBake_stars = 3;
	} else {
		starCount.QBake_stars = 1;
	}
	
	// done
	room_goto(Cookbook_P2);
}
