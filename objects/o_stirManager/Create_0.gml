current = 0;
a = 0; // transparency of black rectangle over screen (for fading)
timer = 60; // buffer before fade

level_timer = 900; // 15 seconds
destroyed = 0;
pause = 0;

// max hits depends on room
// stirGoal will generate random maxStep goals within specified bound 
maxStep = -1;
boundX1 = 0;
boundX2 = 0;
boundY1 = 0;
boundY2 = 0;

if (room == SPotStir) { // this bound is same for all pot stir rooms
	maxStep = 20;
	boundX1 = 340;
	boundX2 = 1200;
	boundY1 = 40;
	boundY2 = 320;
	o_stewManager.end_level = 1;
}

if (room == QStir) {
	o_quicheManager.end_level = 1;
}