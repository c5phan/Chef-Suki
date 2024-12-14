if (o_swipeManager.current == "ronion") {
	if (!done1) {
		if (!created1) {
			piece1 = instance_create_layer(624,32,"Setting_Popup",o_drag); // set at first cut spot
			piece1.image_xscale = 2;
			piece1.image_yscale = 3;
			created1 = 1;
		}
		if (!instance_exists(piece1)) { // was created but destroyed
			done1 = 1;
		} 
	}
	
	if (!done2) {
		if (!created2) {
			piece2 = instance_create_layer(832,16,"Setting_Popup",o_drag); // set at first cut spot
			piece2.image_xscale = 2;
			piece2.image_yscale = 3;
			created2 = 1;
		}
		if (!instance_exists(piece2)) { // was created but destroyed
			done2 = 1;
		} 
	}
	
	if (done1 && done2) {
		timer--;
		if (timer == 0) {
			o_swipeManager.val = 2/6;
			o_swipeManager.current = "chicken";
		}
	}
	
}