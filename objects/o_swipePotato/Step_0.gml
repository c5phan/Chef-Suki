if (o_swipeManager.current == "potato") {
	if (!done1) {
		if (!created1) {
			piece1 = instance_create_layer(912,64,"Setting_Popup",o_drag); // set at first cut spot
			piece1.image_xscale = 1;
			piece1.image_yscale = 1.5;
			created1 = 1;
		}
		if (!instance_exists(piece1)) { // was created but destroyed
			done1 = 1;
		} 
	}
	
	if (!done2) {
		if (!created2) {
			piece2 = instance_create_layer(784,80,"Setting_Popup",o_drag); // set at first cut spot
			piece2.image_xscale = 1;
			piece2.image_yscale = 1.5;
			created2 = 1;
		}
		if (!instance_exists(piece2)) { // was created but destroyed
			done2 = 1;
		} 
	}
	
	if (!done3) {
		if (!created3) {
			piece3 = instance_create_layer(656,32,"Setting_Popup",o_drag); // set at first cut spot
			piece3.image_xscale = 1;
			piece3.image_yscale = 1.5;
			created3 = 1;
		}
		if (!instance_exists(piece3)) { // was created but destroyed
			done3 = 1;
		} 
	}
	
	if (!done4) {
		if (!created4) {
			piece4 = instance_create_layer(736,208,"Setting_Popup",o_drag); // set at first cut spot
			piece4.image_xscale = 1;
			piece4.image_yscale = 1.25;
			created4 = 1;
		}
		if (!instance_exists(piece4)) { // was created but destroyed
			done4 = 1;
		} 
	}
	
	
	if ((done1 && done2) && (done3 && done4)) {
		timer--;
		if (timer == 0) {
			o_swipeManager.current = "celery";
		}
	}
	
}