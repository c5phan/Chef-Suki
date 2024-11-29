if (uncooked) {
	if (in_oven && o_OpenClose.open == 1) {
		draw_sprite_ext(UncookedMac, 0, x, y,0.5,0.5,0,-1,1);
	} 
	if (!in_oven) {
		draw_sprite(UncookedMac,0,x,y);
	}
}

if (cooked) {
	if (in_oven && o_OpenClose.open == 1) {
		draw_sprite_ext(CookedMac, 0, x, y,0.5,0.5,0,-1,1);
	}
	if (!in_oven) {
		draw_sprite(CookedMac,0,x,y);
	}
}

if (burnt) {
	if (in_oven && o_OpenClose.open == 1) {
		draw_sprite_ext(BurntMac, 0, x, y,0.5,0.5,0,-1,1);
	} 
	if (!in_oven) {
		draw_sprite(BurntMac,0,x,y);
	}
}