if (o_swipeManager.current == "carrot") {	
	draw_sprite(BoardSwipe,0,0,0);
	if (!done1 && instance_exists(piece1)) { // piece1 still visible
		draw_sprite(swipeCarrot_P1,0,piece1.x,piece1.y);
	}
	if (!done2 && instance_exists(piece2)) { // piece2 still visible
		draw_sprite(swipeCarrot_P2,0,piece2.x,piece2.y);
	}
	if (!done3 && instance_exists(piece3)) { // piece3 still visible
		draw_sprite(swipeCarrot_P3,0,piece3.x,piece3.y);
	}
	if (!done4 && instance_exists(piece4)) { // piece4 still visible
		draw_sprite(swipeCarrot_P4,0,piece4.x,piece4.y);
	}
	if (!done5 && instance_exists(piece5)) { // piece5 still visible
		draw_sprite(swipeCarrot_P5,0,piece5.x,piece5.y);
	}
}