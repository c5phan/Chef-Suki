if (o_swipeManager.current == "stock") {	
	draw_sprite(stockOpen,0,0,0);
	if (!done1 && instance_exists(piece1)) { // piece1 still visible
		draw_sprite(stockCap,0,0,0);
	} 
	if (done1) {
		draw_sprite(stockOut,0,-40,64);
		draw_sprite(BasePot,0,0,0);
	}
}
