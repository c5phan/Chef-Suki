draw_set_font(Cutscene_txt);
draw_set_color(c_white);
draw_set_halign(fa_center);
if (step == 1) {
	draw_text(640,10,("Put in at 400 degrees"));
	stepTimer = 600; // wait till it's in the oven;
	if (o_dragMac.in_oven && !o_OpenClose.open) {
		stepTimer = 0; // will go to next step
	}
}
if (step == 2) {
	draw_text(640,10,("Bake at 400 degrees"));
	// bake for 10 secs at 400
	if ((o_dial.temp < 400) && (o_dragMac.in_oven && !o_OpenClose.open)) {
		toolow++;
	} 
	if ((o_dial.temp > 400) && (o_dragMac.in_oven && !o_OpenClose.open)) {
		toohigh++;
	}
}
if (step == 3) {
	draw_text(640,10,("Open and Cooldown"));
	// Cooldown for 10 secs 
	if (!o_OpenClose && stepTimer <= 480) { // if it's still in oven within 2 sec leanway 
		toohigh++;
	}
	// time400 should be 600 now
	o_dragMac.uncooked = 1;
	o_dragMac.cooked = 0;
	o_dragMac.burnt = 0;
		
}
if (step == 4) {
	draw_text(640,10,("Put in at 425 degrees"));
	stepTimer = 600; // wait till it's in the oven;
	if (o_dragMac.in_oven && !o_OpenClose.open) {
		stepTimer = 0; // will go to next step
	}
}
if (step == 5) {
	draw_text(640,10,("Bake at 425 degrees"));
	// bake for 10 secs at 375
	if ((o_dial.temp < 425) && (o_dragMac.in_oven && !o_OpenClose.open)) {
		toolow++;
	} 
	if ((o_dial.temp > 425) && (o_dragMac.in_oven && !o_OpenClose.open)) {
		toohigh++;
	}
}
if (step == 6) {
	draw_text(640,10,("Open and Cooldown"));
	// Cooldown for 10 secs
	if (!o_OpenClose && stepTimer <= 480) { // if it's still in oven within 2 sec leanway 
		toohigh++;
	}
	
	o_dragMac.uncooked = 1;
	o_dragMac.cooked = 0;
	o_dragMac.burnt = 0;
	if (toohigh > 20) {  // 20 frame leanway
		o_dragMac.uncooked = 0;
		o_dragMac.cooked = 1;
		o_dragMac.burnt = 0;
	}
}
if (step == 7) {
	draw_text(640,10,("Put in at 350 degrees"));
	stepTimer = 600; // wait till it's in the oven;
	if (o_dragMac.in_oven && !o_OpenClose.open) {
		stepTimer = 0; // will go to next step
	}
}
if (step == 8) {
	draw_text(640,10,("Bake at 350 degrees"));
	// bake for 10 secs at 425
	
	if ((o_dial.temp < 350) && (o_dragMac.in_oven && !o_OpenClose.open)) {
		toolow++;
	} 
	if ((o_dial.temp > 350) && (o_dragMac.in_oven && !o_OpenClose.open)) {
		toohigh++;
	}
}
if (step == 9) {
	draw_text(640,10,("Open and Cooldown"));
	// Cooldown for 10 secs
	if (!o_OpenClose && stepTimer <= 480) { // if it's still in oven within 2 sec leanway 
		toohigh++;
	}
	
	o_dragMac.uncooked = 0;
	o_dragMac.cooked = 1;
	o_dragMac.burnt = 0;
	if (toohigh > 20 && toohigh > toolow) { // 20 frame leanway
		o_dragMac.uncooked = 0;
		o_dragMac.cooked = 0;
		o_dragMac.burnt = 1;
	}
	if (toolow > 20 && toolow > toohigh) {
		o_dragMac.uncooked = 1;
		o_dragMac.cooked = 0;
		o_dragMac.burnt = 0;
	}
}
if (step == 10) {
	draw_text(640,10,("Put in at 375 degrees"));
	stepTimer = 600; // wait till it's in the oven;
	if (o_dragMac.in_oven && !o_OpenClose.open) {
		stepTimer = 0; // will go to next step
	}
}
if (step == 11) {
	draw_text(640,10,("Bake at 375 degrees"));
	// bake for 10 secs at 375
	
	if ((o_dial.temp < 375) && (o_dragMac.in_oven && !o_OpenClose.open)) {
		toolow++;
	} 
	if ((o_dial.temp > 375) && (o_dragMac.in_oven && !o_OpenClose.open)) {
		toohigh++;
	}
}
if (step == 12) {
	draw_text(640,10,("Open and Cooldown"));
	if (!o_OpenClose && stepTimer <= 480) { // if it's still in oven within 2 sec leanway 
		toohigh++;
	}
	
	o_dragMac.uncooked = 0;
	o_dragMac.cooked = 1;
	o_dragMac.burnt = 0;
	if (toohigh > 20 && toohigh > toolow) { // 20 frames leanway
		o_dragMac.uncooked = 0;
		o_dragMac.cooked = 0;
		o_dragMac.burnt = 1;
	}
	if (toolow > 20 && toolow > toohigh) {
		o_dragMac.uncooked = 1;
		o_dragMac.cooked = 0;
		o_dragMac.burnt = 0;
	}
}
if (step == 13) {
	draw_text(640,10,("Put in at 450 degrees"));
	stepTimer = 600; // wait till it's in the oven;
	if (o_dragMac.in_oven) {
		stepTimer = 0; // will go to next step
	}
}
if (step == 14) {
	draw_text(640,10,("Bake at 450 degrees"));
	// bake for 10 secs at 375
	
	if ((o_dial.temp < 450) && (o_dragMac.in_oven && !o_OpenClose.open)) {
		toolow++;
	} 
	if ((o_dial.temp > 450) && (o_dragMac.in_oven && !o_OpenClose.open)) {
		toohigh++;
	}
}
if (step == 15) {
	draw_text(640,10,("Take Out"));
	if (o_dragMac.in_oven) { // wait till its out then decrease cooldown
		stepTimer = 600;
	} else {
		stepTimer = 0;
	}
}
