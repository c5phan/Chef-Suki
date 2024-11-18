/// @description Draw Player
draw_sprite(SukiShadow, 0, x, y + zFloor);
if (look_left) {
	draw_sprite_ext(SukiL, 0, x, y + z,1,1,0,-1,1);
} else {
	draw_sprite_ext(SukiR, 0, x, y + z,1,1,0,-1,1);
}