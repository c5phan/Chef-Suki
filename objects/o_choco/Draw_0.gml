if (room == SF_Shelf3 || room == QF_Shelf1 || room = MF_Shelf5) { // chicken hit
	if (timer <= 150) { // draw indicator 2.5 secs before hit
		draw_sprite_ext(ChocoTarg, 0, 375,0,0.5,0.5,0,-1,1);
	}

	if (timer <= 90) { // draw choco for 1.5 secs
		draw_sprite_ext(ChocoPaw, 0, 375,0,0.5,0.5,0,-1,1);
		if (!sndPlayed) {
			
			if (global.effects == 1) {
				var rand = random_range(1, 3.9);
				rand = floor(rand); // pick random meow
				if (rand == 1) {
					audio_play_sound(snd_meow1, 0,0);
				} else if (rand == 2) {
					audio_play_sound(snd_meow2,0,0);
				} else {
					audio_play_sound(snd_meow3,0,0);
				}
			}
			sndPlayed = 1;
		}
	}
}

if (room == QF_Shelf4 || room = MF_Shelf1) { // butter hit
	if (timer <= 150) { // draw indicator 2.5 secs before hit
		draw_sprite_ext(ChocoTarg, 0, 750,0,0.5,0.5,0,-1,1);
	}

	if (timer <= 90) { // draw choco for 1.5 secs
		draw_sprite_ext(ChocoPaw, 0, 750,0,0.5,0.5,0,-1,1);
		if (!sndPlayed) {
			
			if (global.effects == 1) {
				var rand = random_range(1, 3.9);
				rand = floor(rand); // pick random meow
				if (rand == 1) {
					audio_play_sound(snd_meow1, 0,0);
				} else if (rand == 2) {
					audio_play_sound(snd_meow2,0,0);
				} else {
					audio_play_sound(snd_meow3,0,0);
				}
			}
			sndPlayed = 1;
		}
	}
}

if (room == MF_Shelf4) { // egg
	if (timer <= 150) { // draw indicator 2.5 secs before hit
		draw_sprite_ext(ChocoTarg, 0, 750,150,0.5,0.5,0,-1,1);
	}

	if (timer <= 90) { // draw choco for 1.5 secs
		draw_sprite_ext(ChocoPaw, 0, 750,150,0.5,0.5,0,-1,1);
		if (!sndPlayed) {
			
			if (global.effects == 1) {
				var rand = random_range(1, 3.9);
				rand = floor(rand); // pick random meow
				if (rand == 1) {
					audio_play_sound(snd_meow1, 0,0);
				} else if (rand == 2) {
					audio_play_sound(snd_meow2,0,0);
				} else {
					audio_play_sound(snd_meow3,0,0);
				}
			}
			sndPlayed = 1;
		}
	}
}
	