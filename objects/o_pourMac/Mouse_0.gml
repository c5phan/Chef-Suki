 // will take 20 for full opacity and 90 degree angle
if (!pause) {
	if (clickBuffer != 0) {
		clickBuffer--;
	}
	if (clickBuffer == 0) {
		pourOpacity += 0.05;
		if (image_angle < 90) {
			image_angle += 3.75;
		}
		clickBuffer = 10;
}
