if (o_swipeManager.current == "pasta") {
	if (!done1) {
		if (!created1) {
			piece1 = instance_create_layer(896,-64,"Setting_Popup",o_checkClick); // set at first cut spot
			piece1.image_xscale = 4.5;
			piece1.image_yscale = 6;
			piece1.image_angle = -20;
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
			o_swipeManager.val = 1;
			o_swipeManager.current = "done";
		}
	}
}
