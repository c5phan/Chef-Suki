current = "";
a = 0; // transparency of black rectangle over screen (for fading)
level_timer = -1; 
timer = 60; // buffer before fade
pause = 0;

if (room == SSwipe) {
	current = "carrot";
	level_timer = 1200; // 20 secs
	o_stewManager.end_level = 1;
}
if (room == QSwipe) {
	current = "bacon";
	level_timer = 1200;
	o_quicheManager.end_level = 1;
}
if (room == MSwipe1) {
	current = "butter";
	level_timer = 600; // 10 secs
	o_macManager.end_level = 1;
}
if (room == MSwipe2) {
	current = "bacon";
	level_timer = 900; // 15 secs
	o_macManager.end_level = 1;
}