if (o_swipeManager.current == "egg") {	
	if (!done1 && instance_exists(piece1)) { // piece1 still visible
		draw_sprite(wholeEgg,0,0,0);
	} 
	if (done1) {
		if (timer >= 10) {
			draw_sprite(crackEgg,0,0,0);
		} 
	}
}
