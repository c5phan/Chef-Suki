if (level_timer > 0 && !pause) {
	level_timer--;
}

// run out of time
if (level_timer == 0) {
	timer--;
}
	

if (timer <= 0) {
	a = min(a+0.015, 1) 
}

if (a == 1) {
	// calculate level stars 
	
	// done
	room_goto(Cookbook_P2);
}
