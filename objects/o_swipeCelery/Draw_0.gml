if (o_swipeManager.current == "celery") {	
	draw_sprite(BoardSwipe,0,0,0);
	if (!done1 && instance_exists(piece1)) { // piece1 still visible
		draw_sprite_ext(swipeCelery_P1,0,piece1.x,piece1.y,0.5,0.5,0,-1,1);
	}
	if (!done2 && instance_exists(piece2)) { // piece2 still visible
		draw_sprite_ext(swipeCelery_P2,0,piece2.x,piece2.y,0.5,0.5,0,-1,1);
	}
	if (!done3 && instance_exists(piece3)) { // piece3 still visible
		draw_sprite_ext(swipeCelery_P3,0,piece3.x,piece3.y,0.5,0.5,0,-1,1);
	}
	if (!done4 && instance_exists(piece4)) { // piece4 still visible
		draw_sprite_ext(swipeCelery_P4,0,piece4.x,piece4.y,0.5,0.5,0,-1,1);
	}
	if (!done5 && instance_exists(piece5)) { // piece5 still visible
		draw_sprite_ext(swipeCelery_P5,0,piece5.x,piece5.y,0.5,0.5,0,-1,1);
	}
	if (!done6 && instance_exists(piece6)) { // piece6 still visible
		draw_sprite_ext(swipeCelery_P6,0,piece6.x,piece6.y,0.5,0.5,0,-1,1);
	}
	if (!done7 && instance_exists(piece7)) { // piece7 still visible
		draw_sprite_ext(swipeCelery_P7,0,piece7.x,piece7.y,0.5,0.5,0,-1,1);
	}
}