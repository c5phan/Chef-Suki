/// @description Draw Player
draw_sprite(SukiShadow, 0, x, y + zFloor);
if (look_left) {
	draw_sprite(SukiL, 0, x, y + z);
} else {
	draw_sprite(SukiR, 0, x, y + z);
}