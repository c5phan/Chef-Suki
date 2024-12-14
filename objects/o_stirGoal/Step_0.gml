if (place_meeting(x,y,o_handHitbox)) {
	o_stirManager.current++;
	o_stirManager.val = o_stirManager.current/o_stirManager.maxStep;
	if (o_stirManager.current == o_stirManager.maxStep) {
		instance_destroy();
	}
	x = random_range(o_stirManager.boundX1,o_stirManager.boundX2);
	y = random_range(o_stirManager.boundY1,o_stirManager.boundY2);
}