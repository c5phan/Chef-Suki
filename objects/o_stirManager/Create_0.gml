current = 0;
a = 0; // transparency of black rectangle over screen (for fading)
timer = 60; // buffer before fade

level_timer = -1; // 15 seconds
destroyed = 0;
pause = 0;

// max hits depends on room
// stirGoal will generate random maxStep goals within specified bound 
maxStep = -1;
boundX1 = 0;
boundX2 = 0;
boundY1 = 0;
boundY2 = 0;

if (room == SStir) { // this bound is same for all pot stir rooms
	level_timer = 900;
	maxStep = 20;
	boundX1 = 340;
	boundX2 = 1200;
	boundY1 = 40;
	boundY2 = 320;
	o_stewManager.end_level = 1;
}

if (room == QStir) {
	level_timer = 1500; // 25 seconds
	maxStep = 40;
	boundX1 = 500;
	boundX2 = 1000;
	boundY1 = 80;
	boundY2 = 380;
	o_quicheManager.end_level = 1;
}


if (room == MStir1 || room == MStir2) { // this bound is same for all pot stir rooms
	level_timer = 900;
	maxStep = 20;
	boundX1 = 340;
	boundX2 = 1200;
	boundY1 = 40;
	boundY2 = 320;
	o_macManager.end_level = 1;
}