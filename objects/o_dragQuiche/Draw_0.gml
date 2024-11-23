if (uncooked) {
	if (in_oven && o_OpenClose.open == 1) {
		draw_sprite_ext(UncookedQuiche, 0, x, y,0.5,0.5,0,-1,1);
	} 
	if (!in_oven) {
		draw_sprite(UncookedQuiche,0,x,y);
	}
}

if (cooked) {
	if (in_oven && o_OpenClose.open == 1) {
		draw_sprite_ext(CookedQuiche, 0, x, y,0.5,0.5,0,-1,1);
	}
	if (!in_oven) {
		draw_sprite(CookedQuiche,0,x,y);
	}
}

if (burnt && o_OpenClose.open == 1) {
	if (in_oven) {
		draw_sprite_ext(BurntQuiche, 0, x, y,0.5,0.5,0,-1,1);
	} 
	if (!in_oven) {
		draw_sprite(BurntQuiche,0,x,y);
	}
}