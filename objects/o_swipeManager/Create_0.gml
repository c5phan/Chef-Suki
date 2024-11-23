current = "";
a = 0; // transparency of black rectangle over screen (for fading)
level_timer = 1200; // 20 seconds
timer = 60; // buffer before fade
pause = 0;

if (room == SPotSwipe) {
	current = "carrot";
	o_stewManager.end_level = 1;
}
if (room == QSwipe) {
	current = "bacon";
	o_quicheManager.end_level = 1;
}