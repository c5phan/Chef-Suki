if (room == SStir) {
	draw_sprite_ext(sPixel,0, 0,0,1280,720,0,c_black,b); // stew ends on stir
} else {
	draw_sprite_ext(sPixel,0, 0,0,1280,720,0,c_black,a); // others end on oven
}