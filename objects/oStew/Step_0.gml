var play = keyboard_check(ord("E"));

if (place_meeting(x,y,oPlayer_TopDown)) {
	showConfirm = 1;
} else {
	showConfirm = 0;
}

if (play && showConfirm) {
	holdE++;
}


if (holdE > 10) {
	a = min(a+0.015, 1)
}

if (a == 1) {
	room_goto(Scut);
}