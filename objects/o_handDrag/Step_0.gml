if (!o_stirManager.pause) {
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
		o_handHitbox.x = x + 70;
		o_handHitbox.y = y + 70;
		// check if i hits the  range limit of drag
		if (place_meeting(x,y,o_solid)) {
			x = org_x;
			y = org_y
			o_handHitbox.x = x + 70;
			o_handHitbox.y = y + 70
			drag = false;
		}
	 
	  if (mouse_check_button_released(mb_left)) {
		  drag = false;
		  x = org_x; // set back to original spot
		  y = org_y
		  o_handHitbox.x = x + 70;
		  o_handHitbox.y = y + 70
	  }
	}
}