if (o_swipeManager.current == "ronion") {	
	draw_sprite(BoardSwipe,0,0,0);
	if (!done1 && instance_exists(piece1)) { // piece1 still visible
		draw_sprite(swipeOnion_P1,0,piece1.x,piece1.y);
	}
	if (!done2 && instance_exists(piece2)) { // piece2 still visible
		draw_sprite(swipeOnion_P2,0,piece2.x,piece2.y);
	}
}