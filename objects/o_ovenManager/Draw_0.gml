if (!startEnd && timer <= 0) {
	draw_sprite_ext(sPixel,0, 0,0,1280,720,0,c_black,a);
}

if (startEnd) {
	draw_sprite(Counter,0,0,0);
	
	if (room == QOven) {
		if (o_dragQuiche.uncooked) {
			draw_sprite(UncookedQuiche,0,360,256);
		} else if (o_dragQuiche.cooked) {
			draw_sprite(CookedQuiche,0,360,256);
		} else {
			draw_sprite(BurntQuiche,0,360,256);
		}
	}
	if (room == MOven) {
		if (o_dragMac.uncooked) {
			draw_sprite(UncookedQuiche,0,360,256);
		} else if (o_dragMac.cooked) {
			draw_sprite(CookedQuiche,0,360,256);
		} else {
			draw_sprite(BurntQuiche,0,360,256);
		}
	}
	
	var base = 400;
	for (i = 0; i < 3; i++) { // draw empty stars
		draw_sprite_ext(emptyStar,0,base,75,0.2,0.2,0,-1,1);
		base += 150;
	}
	
	if (room == QOven) {
		if (endTimer <= 240 && starCount.Q_final >= 1) {
			draw_sprite_ext(star,0,400,75,0.2,0.2,0,-1,1);
		}
		if (endTimer <= 180 && starCount.Q_final >= 2) {
			draw_sprite_ext(star,0,550,75,0.2,0.2,0,-1,1);
		}
		if (endTimer <= 120 && starCount.Q_final == 3) {
			draw_sprite_ext(star,0,700,75,0.2,0.2,0,-1,1);
		}
	}
	if (room == MOven) {
		if (endTimer <= 240 && starCount.M_final >= 1) {
			draw_sprite_ext(star,0,400,75,0.2,0.2,0,-1,1);
		}
		if (endTimer <= 180 && starCount.M_final >= 2) {
			draw_sprite_ext(star,0,550,75,0.2,0.2,0,-1,1);
		}
		if (endTimer <= 120 && starCount.M_final == 3) {
			draw_sprite_ext(star,0,700,75,0.2,0.2,0,-1,1);
		}
	}
}