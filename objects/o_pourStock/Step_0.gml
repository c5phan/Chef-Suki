if (o_swipeManager.current == "stock") {
	if (!done1) {
		if (!created1) {
			piece1 = instance_create_layer(768,240,"Setting_Popup",o_checkClick); // set at first cut spot
			piece1.image_xscale = 1.75;
			piece1.image_yscale = 2;
			created1 = 1;
		}
		if (piece1.pressed == 1) {
			done1 = 1;
			if (global.effects == 1) {
				audio_play_sound(snd_pour,0,0);
			}
			instance_destroy(piece1);
		}
	}
	
	if (done1) {
		timer--;
		if (timer == 0) {
			o_swipeManager.current = "done";
		}
	}
}
