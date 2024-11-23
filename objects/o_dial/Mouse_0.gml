if (!o_ovenManager.pause) {
	if (buffer != 0) {
		buffer--;
	} else {
		if (temp == 350) {
			temp = 375;
			image_angle = 48;
		} else if (temp == 375) {
			temp = 400;
			image_angle = 0;
		} else if (temp == 400) {
			temp = 425;
			image_angle = -40;
		} else if (temp == 425) {
			temp = 450;
			image_angle = -75;
		} else { // current temp is 450
			temp = 350;
			image_angle = 75; 
		}
		buffer = 5;
	}
}