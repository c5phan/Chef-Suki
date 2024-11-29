if (uncooked) {
	if (in_oven && o_OpenClose.open == 1) {
		draw_sprite_ext(UncookedCheeseMac, 0, x, y,0.5,0.5,0,-1,1);
	} 
	if (!in_oven) {
		draw_sprite(UncookedCheeseMac,0,x,y);
	}
}

if (cooked) {
	if (in_oven && o_OpenClose.open == 1) {
		draw_sprite_ext(CookedCheeseMac, 0, x, y,0.5,0.5,0,-1,1);
	}
	if (!in_oven) {
		draw_sprite(CookedCheeseMac,0,x,y);
	}
}

if (burnt) {
	if (in_oven && o_OpenClose.open == 1) {
		draw_sprite_ext(BurntCheeseMac, 0, x, y,0.5,0.5,0,-1,1);
	} 
	if (!in_oven) {
		draw_sprite(BurntCheeseMac,0,x,y);
	}
}