if (o_swipeManager.current == "butter") {
	if (!done1) {
		if (!created1) {
			piece1 = instance_create_layer(640,16,"Setting_Popup",o_drag); // set at first cut spot
			piece1.image_xscale = 4.75;
			piece1.image_yscale = 3.75;
			created1 = 1;
		}
		if (!instance_exists(piece1)) { // was created but destroyed
			done1 = 1;
		} 
	}
	
	if (done1) {
		timer--;
		if (timer == 0) {
			o_swipeManager.val = 1/3;
			o_swipeManager.current = "cheese";
		}
	}
	
}