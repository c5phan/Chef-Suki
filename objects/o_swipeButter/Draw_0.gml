if (o_swipeManager.current == "butter") {	
	draw_sprite(BoardSwipe,0,0,0);
	if (!done1 && instance_exists(piece1)) { // piece1 still visible
		draw_sprite(swipeButter_P1,0,piece1.x,piece1.y);
	}
}