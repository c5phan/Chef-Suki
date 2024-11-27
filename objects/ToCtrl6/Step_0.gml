timer--;
if ((timer <= 50 && room == Controls_P5) && keyboard_check(vk_right)) {
    room_goto(Controls_P6);
}

if (timer == 0) {
	timer = time;
}
