if (room == SF_Shelf3 || room == QF_Shelf1 || room = MF_Shelf5) { // chicken hit
	if (timer <= 150) { // draw indicator 2.5 secs before hit
		draw_sprite_ext(ChocoTarg, 0, 375,0,0.5,0.5,0,-1,1);
	}

	if (timer <= 90) { // draw choco for 1.5 secs
		draw_sprite_ext(ChocoPaw, 0, 375,0,0.5,0.5,0,-1,1);
	}
}

if (room == QF_Shelf4 || room = MF_Shelf1) { // butter hit
	if (timer <= 150) { // draw indicator 2.5 secs before hit
		draw_sprite_ext(ChocoTarg, 0, 750,0,0.5,0.5,0,-1,1);
	}

	if (timer <= 90) { // draw choco for 1.5 secs
		draw_sprite_ext(ChocoPaw, 0, 750,0,0.5,0.5,0,-1,1);
	}
}

if (room == MF_Shelf4) { // egg
	if (timer <= 150) { // draw indicator 2.5 secs before hit
		draw_sprite_ext(ChocoTarg, 0, 750,150,0.5,0.5,0,-1,1);
	}

	if (timer <= 90) { // draw choco for 1.5 secs
		draw_sprite_ext(ChocoPaw, 0, 750,150,0.5,0.5,0,-1,1);
	}
}
	