draw_set_font(Cutscene_txt);
draw_set_color(c_white);
draw_set_halign(fa_center);
if (step == 1) {
	draw_text(640,10,("Put in at 450 degrees"));
	stepTimer = 600; // wait till it's in the oven;
	if (o_dragMacCheese.in_oven && !o_OpenClose.open) {
		stepTimer = 0; // will go to next step
	}
}
if (step == 2) {
	draw_text(640,10,("Bake at 450 degrees"));
	// bake for 10 secs at 400
	if ((o_dial.temp < 450) && (o_dragMacCheese.in_oven && !o_OpenClose.open)) {
		toolow++;
	} 
	if ((o_dial.temp > 450) && (o_dragMacCheese.in_oven && !o_OpenClose.open)) {
		toohigh++;
	}
}
if (step == 3) {
	draw_text(640,10,("Open and Cooldown"));
	if (global.effects == 1 && !sound) {
		audio_sound_set_track_position(snd_ding,6); // start at 6 sec
		audio_play_sound(snd_ding,0,0);
		sound = 1;
	}
	// Cooldown for 10 secs 
	if (!o_OpenClose && stepTimer <= 480) { // if it's still in oven within 2 sec leanway 
		toohigh++;
	}
	// time400 should be 600 now
	o_dragMacCheese.uncooked = 1;
	o_dragMacCheese.cooked = 0;
	o_dragMacCheese.burnt = 0;
		
}
if (step == 4) {
	sound = 0;
	draw_text(640,10,("Put in at 400 degrees"));
	stepTimer = 600; // wait till it's in the oven;
	if (o_dragMacCheese.in_oven && !o_OpenClose.open) {
		stepTimer = 0; // will go to next step
	}
}
if (step == 5) {
	draw_text(640,10,("Bake at 400 degrees"));
	// bake for 10 secs at 375
	if ((o_dial.temp < 400) && (o_dragMacCheese.in_oven && !o_OpenClose.open)) {
		toolow++;
	} 
	if ((o_dial.temp > 400) && (o_dragMacCheese.in_oven && !o_OpenClose.open)) {
		toohigh++;
	}
}
if (step == 6) {
	draw_text(640,10,("Take Out"));
	if (global.effects == 1 && !sound) {
		audio_sound_set_track_position(snd_ding,6); // start at 6 sec
		audio_play_sound(snd_ding,0,0);
		sound = 1;
	}
	if (toohigh > 20) {  
		o_dragMacCheese.uncooked = 0;
		o_dragMacCheese.cooked = 0;
		o_dragMacCheese.burnt = 1;
	} else if (toolow > 20) {  
		o_dragMacCheese.uncooked = 1;
		o_dragMacCheese.cooked = 0;
		o_dragMacCheese.burnt = 0;
	} else {
		o_dragMacCheese.uncooked = 0;
		o_dragMacCheese.cooked = 1;
		o_dragMacCheese.burnt = 0;
	}
	
	if (o_dragMacCheese.in_oven) { // wait till its out then decrease cooldown
		stepTimer = 600;
	} else {
		stepTimer = 0;
	}
}
