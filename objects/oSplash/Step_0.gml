timer--;
if (timer <= 270) {
	a = min(a+0.015, 1)
}

if (a = 1) {
	room_goto(Intro_Cutscene);
}
