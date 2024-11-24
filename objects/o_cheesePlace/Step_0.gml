if (!o_cheeseBowl.pause) {
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
		 if (place_meeting(x,y,o_placeTarg)) {
			 collide = instance_place(x,y,o_placeTarg);
			 if (collide.hit == 0) {
				 collide.hit = 1;
				 o_cheeseBowl.numHits++;
				 instance_destroy();
			 } else {
				 x = org_x;
				 y = org_y;
			 }
		 } else { // set back to original spot
			 x = org_x;
			 y = org_y
		 }
	 }
	}
}
