current = "";
pause = 0;
a = 0; // transparency of black rectangle over screen (for fading)
timer = 60; // buffer before fade

if (room == QOven) {
	current = "quiche";
	o_quicheManager.end_level = 1;
}