if (!o_ovenManager.pause) {
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
	 
	 // check if released in oven hitbox
	  if (mouse_check_button_released(mb_left)) {
		  drag = false;
		 if (place_meeting(x,y,o_solid)) {
			x = 448;
			y = 352; // close oven and set to center of oven
			image_xscale = 0.5;
			image_yscale = 0.5;
			in_oven = 1;
		 } else {
			x = org_x;
			y = org_y;
			image_xscale = 1;
			image_yscale = 1;
			in_oven = 0;
		 }
	  }
	}
}
