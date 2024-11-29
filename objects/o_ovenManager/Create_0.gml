current = "";
pause = 0;
a = 0; // transparency of black rectangle over screen (for fading)
timer = 60; // buffer before fade

b = 0; // second fadeout
endTimer = 300;
startEnd = 0;

if (room == QOven) {
	current = "quiche";
	o_quicheManager.end_level = 1;
}

if (room == MOven2 || room == MOven1) {
	current = "mac";
	o_macManager.end_level = 1;
}