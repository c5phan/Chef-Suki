timer--;

if ((timer <= 50 && room == Controls_P2) && keyboard_check(vk_left)) {
    room_goto(Controls_P1);
}

if (timer == 0) {
	timer = time;
}