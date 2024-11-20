if (timer <= 150) { // draw indicator 2.5 secs before hit
	draw_sprite_ext(ChocoTarg, 0, 375,0,0.5,0.5,0,-1,1);
}

if (timer <= 90) { // draw choco for 1.5 secs
	draw_sprite_ext(ChocoPaw, 0, 375,0,0.5,0.5,0,-1,1);
}
