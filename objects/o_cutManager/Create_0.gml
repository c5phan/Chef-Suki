currentCut = "";
a = 0; // transparency of black rectangle over screen (for fading)

level_timer = -1;
timer = 60; // buffer before fade
pause = 0;
if (room == SCut) {
	currentCut = "carrot";
	level_timer = 1500;  // 25 seconds
	o_stewManager.end_level = 1;
} 
if (room == QCut) {
	currentCut = "bacon";
	level_timer = 1200; // 20 seconds
	o_quicheManager.end_level = 1;
}
if (room == MCut) {
	currentCut = "cheese";
	level_timer = 1200;
	o_macManager.end_level = 1;
}