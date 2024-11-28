if (room == SF_Shelf1) {
	end_level = 0;
}

// dropping function
if (!end_level) {
	drop = keyboard_check_pressed(ord("Q"));
	if (drop) {
		if (global.effects == 1) {
			audio_sound_pitch(snd_pop,0.5);
			audio_play_sound(snd_pop,0,0);
		}
		if (inven[select] > 0)
		{
			inven[select]--;
			if (inven[select] == 0) { // dropped everything
				unique--;
			}
		}
	}

	if (mouse_wheel_up() || keyboard_check(vk_right))
	{
	    if (!buffer) {
			select++;
			if (select > 5) {
				select = 0;
			}
			buffer = 5;
		} else {
			buffer--;
		}
	}

	if (mouse_wheel_down() || keyboard_check(vk_left))
	{
	    if (!buffer) {
			select--;
			if (select < 0) {
				select = 5;
			}
			buffer = 5;
		} else {
			buffer--;
		}
	}
}  else { // end level so reset
	for (i = 0; i < 6; i++) {
			inven[i] = 0;
			name[i] = "";
	}
	unique = 0;
}

