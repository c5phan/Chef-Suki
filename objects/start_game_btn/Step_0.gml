if (pressed) {
	a = min(a+0.015, 1);
}

if (a == 1) {
	room_goto(Cookbook_P1);
}