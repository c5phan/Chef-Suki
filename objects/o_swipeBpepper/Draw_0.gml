if (o_swipeManager.current == "bpepper") {	
	draw_sprite(BoardSwipe,0,0,0);
	if (!done1 && instance_exists(piece1)) { // piece1 still visible
		draw_sprite_ext(swipeBpepper_P1,0,piece1.x,piece1.y, 0.5, 0.5, 0, -1, 1);
	}
	if (!done2 && instance_exists(piece2)) { // piece2 still visible
		draw_sprite_ext(swipeBpepper_P2,0,piece2.x,piece2.y, 0.5, 0.5, 0, -1, 1);
	}
	if (!done3 && instance_exists(piece3)) { // piece3 still visible
		draw_sprite_ext(swipeBpepper_P3,0,piece3.x,piece3.y, 0.5, 0.5, 0, -1, 1);
	}
	if (!done4 && instance_exists(piece4)) { // piece4 still visible
		draw_sprite_ext(swipeBpepper_P4,0,piece4.x,piece4.y, 0.5, 0.5, 0, -1, 1);
	}
}