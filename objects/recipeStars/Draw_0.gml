if (room == Cookbook_P1) {
	var base = 800;
	for (i = 0; i < starCount.S_final; i++) {
		draw_sprite_ext(star,0,base, 375,0.1,0.1,0,-1,1);
		base += 90;
	}
	for (i = 1; i <= 3 - starCount.S_final; i++) {
		draw_sprite_ext(emptyStar,0,base, 375,0.1,0.1,0,-1,1);
		base += 90;
	}
}
if (room == Cookbook_P2) {
	var base = 800;
	for (i = 0; i < starCount.Q_final; i++) {
		draw_sprite_ext(star,0,base, 375,0.1,0.1,0,-1,1);
		base += 90;
	}
	for (i = 1; i <= 3 - starCount.Q_final; i++) {
		draw_sprite_ext(emptyStar,0,base, 375,0.1,0.1,0,-1,1);
		base += 90;
	}
}
if (room == Cookbook_P3) {
	var base = 800;
	for (i = 0; i < starCount.M_final; i++) {
		draw_sprite_ext(star,0,base, 375,0.1,0.1,0,-1,1);
		base += 90;
	}
	for (i = 1; i <= 3 - starCount.M_final; i++) {
		draw_sprite_ext(emptyStar,0,base, 375,0.1,0.1,0,-1,1);
		base += 90;
	}
}