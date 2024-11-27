timer--;

if ((timer <= 50 && room == Controls_P3) && keyboard_check(vk_left)) {
    room_goto(Controls_P2);
}
if ((timer <= 50 && room == Controls_P1) && keyboard_check(vk_right)) {
    room_goto(Controls_P2);
}

if (timer == 0) {
	timer = time;
}
