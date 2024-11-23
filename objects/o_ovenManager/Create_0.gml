current = "";
a = 0; // transparency of black rectangle over screen (for fading)
timer = 60; // buffer before fade

level_timer = 3600; // 1 min
pause = 0;

cook_needed = 0;
cook_total = 0
temp = 0;

if (room == QOven) {
	o_quicheManager.end_level = 1;
}