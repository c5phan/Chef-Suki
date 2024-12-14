if (!startEnd) {
	draw_set_font(Cutscene_txt);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text(80,79,("Time Left: " + string(ceil(level_timer/60))));
	
	// progress bar
	draw_rectangle_colour(575, 30, 775, 50, c_white, c_white, c_white, c_white, 0);
	draw_rectangle_colour(578, 32, 772, 48, c_ltgray, c_ltgray, c_ltgray, c_ltgray, 0);
	draw_rectangle_colour(581, 34, 581+188*(val), 46, c_white, c_white, c_white, c_white, 0);

	
	if (room == SStir) {
		if (timer <= 0) {
			draw_sprite_ext(sPixel,0, 0,0,1280,720,0,c_black,a);
		}
	}
}
if (startEnd) {
	draw_sprite(Counter,0,0,0);
	draw_sprite_ext(ChickenStew,0,352,256,0.5,0.5,0,-1,1);
	var base = 400;
	for (i = 0; i < 3; i++) {
		draw_sprite_ext(emptyStar,0,base,75,0.2,0.2,0,-1,1);
		base += 150;
	}
	
	if (endTimer <= 240 && starCount.S_final >= 1) {
		draw_sprite_ext(star,0,400,75,0.2,0.2,0,-1,1);
	}
	if (endTimer <= 180 && starCount.S_final >= 2) {
		draw_sprite_ext(star,0,550,75,0.2,0.2,0,-1,1);
	}
	if (endTimer <= 120 && starCount.S_final == 3) {
		draw_sprite_ext(star,0,700,75,0.2,0.2,0,-1,1);
	}
}
