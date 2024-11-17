/// @description Draw Player
draw_sprite_ext(SukiShadow, 0, x, y + zFloor, 3, 3, 0, -1, 1);
if (look_left) {
	draw_sprite_ext(SukiR, 0, x, y + z,3,3,0,-1,1);
} else {
	draw_sprite_ext(SukiL, 0, x, y + z,3,3,0,-1,1);
}