if (o_swipeManager.current == "cream") {	
	draw_sprite(creamOpen,0,0,0);
	if (!done1 && instance_exists(piece1)) { // piece1 still visible
		draw_sprite(creamCap,0,0,0);
	} 
	if (done1) {
		draw_sprite(creamOut,0,-176,0);
		draw_sprite(BaseBowl,0,0,0);
	}
}
