if (o_swipeManager.current == "celery") {
	if (!done1) {
		if (!created1) {
			piece1 = instance_create_layer(576,80,"Setting_Popup",o_drag); // set at first cut spot
			piece1.image_xscale = 0.75;
			piece1.image_yscale = 0.75;
			created1 = 1;
		}
		if (!instance_exists(piece1)) { // was created but destroyed
			done1 = 1;
		} 
	}
	
	if (!done2) {
		if (!created2) {
			piece2 = instance_create_layer(752,32,"Setting_Popup",o_drag); // set at first cut spot
			piece2.image_xscale = 0.75;
			piece2.image_yscale = 0.75;
			created2 = 1;
		}
		if (!instance_exists(piece2)) { // was created but destroyed
			done2 = 1;
		} 
	}
	
	if (!done3) {
		if (!created3) {
			piece3 = instance_create_layer(704,144,"Setting_Popup",o_drag); // set at first cut spot
			piece3.image_xscale = 1;
			piece3.image_yscale = 0.75;
			created3 = 1;
		}
		if (!instance_exists(piece3)) { // was created but destroyed
			done3 = 1;
		} 
	}
	
	if (!done4) {
		if (!created4) {
			piece4 = instance_create_layer(880,96,"Setting_Popup",o_drag); // set at first cut spot
			piece4.image_xscale = 1;
			piece4.image_yscale = 0.5;
			created4 = 1;
		}
		if (!instance_exists(piece4)) { // was created but destroyed
			done4 = 1;
		} 
	}
	
	if (!done5) {
		if (!created5) {
			piece5 = instance_create_layer(736,256,"Setting_Popup",o_drag); // set at first cut spot
			piece5.image_xscale = 1;
			piece5.image_yscale = 0.5;
			created5 = 1;
		}
		if (!instance_exists(piece5)) { // was created but destroyed
			done5 = 1;
		} 
	}
	
	if (!done6) {
		if (!created6) {
			piece6 = instance_create_layer(1040,96,"Setting_Popup",o_drag); // set at first cut spot
			piece6.image_xscale = 0.75;
			piece6.image_yscale = 0.5;
			created6 = 1;
		}
		if (!instance_exists(piece6)) { // was created but destroyed
			done6 = 1;
		} 
	}
	
	if (!done7) {
		if (!created7) {
			piece7 = instance_create_layer(864,176,"Setting_Popup",o_drag); // set at first cut spot
			piece7.image_xscale = 1.5;
			piece7.image_yscale = 1.75;
			created7 = 1;
		}
		if (!instance_exists(piece7)) { // was created but destroyed
			done7 = 1;
		} 
	}
	
	if (((done1 && done2) && (done3 && done4)) && ((done5 && done6) && done7)) {
		timer--;
		if (timer == 0) {
			if (room == SSwipe) {
				o_swipeManager.val = 5/6;
				o_swipeManager.current = "stock";
			}
		}
	}
}