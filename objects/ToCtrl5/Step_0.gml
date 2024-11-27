timer--;

if ((timer <= 50 && room == Controls_P6) && keyboard_check(vk_left)) {
    room_goto(Controls_P5);
}
if ((timer <= 50 && room == Controls_P4) && keyboard_check(vk_right)) {
    room_goto(Controls_P5);
}

if (timer == 0) {
	timer = time;
}
