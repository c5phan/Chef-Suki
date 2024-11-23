if (!o_swipeManager.pause) {
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
	  if (mouse_check_button_released(mb_left)) {
		 drag = false;
		 // check if its in the hitbox of pot
		 if (place_meeting(x,y,o_solid)) {
			 // destory instance to make it seem it went in pot
			 instance_destroy();
		 } else { // set back to original spot
			 x = org_x;
			 y = org_y
		 }
	 }
	}
}