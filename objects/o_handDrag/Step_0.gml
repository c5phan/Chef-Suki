if (!hitboxCreated) {
	hitbox = instance_create_layer(x + sprite_width/2, y + sprite_height/2,"Setting_Popup",o_handHitbox);
	hitbox.image_xscale = 5;
	hitbox.image_yscale = 6;
	hitboxCreated = 1;
}

if (!drag) {
 if (mouse_check_button_pressed(mb_left) && 
	 point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_width)) {
  drag = true;
  mx = x - mouse_x;
  my = y - mouse_y;
 }
} else { // dragging
	x = mouse_x + mx;
	y = mouse_y + my;
	// check if i hits the  range limit of drag
	if (place_meeting(x,y,o_solid)) {
		x = org_x;
		y = org_y
		drag = false;
	}
	 
  if (mouse_check_button_released(mb_left)) {
	  drag = false;
	  x = org_x; // set back to original spot
	  y = org_y
  }
}