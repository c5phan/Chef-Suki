if (o_swipeManager.current == "egg") {
	if (!done1) {
		if (!created1) {
			piece1 = instance_create_layer(432,32,"Setting_Popup",o_checkClick); // set at first cut spot
			piece1.image_xscale = 3.75;
			piece1.image_yscale = 2.75;
			created1 = 1;
		}
		if (piece1.pressed == 1) {
			done1 = 1;
			instance_destroy(piece1);
		}
	}
	
	if (done1) {
		timer--;
		if (timer == 0) {
			o_swipeManager.current = "cream";
		}
	}
}
