if ((mouse_x > x && mouse_x < x + sprite_width) && 
	(mouse_y > y && mouse_y < y + sprite_height)) { // hovering
	draw_sprite(PlayHover,0,x,y);
} else {
	draw_sprite(PlayBtn,0,x,y);
}