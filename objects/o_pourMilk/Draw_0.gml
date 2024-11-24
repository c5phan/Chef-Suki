if (o_swipeManager.current == "milk") {	
	draw_sprite(milkOpen,0,320,-32);
	if (!done1 && instance_exists(piece1)) { // piece1 still visible
		draw_sprite(creamCap,0,320,-32);
	} 
	if (done1) {
		draw_sprite(creamOut,0,144,0-16);
		draw_sprite(BasePot,0,0,0);
	}
}
