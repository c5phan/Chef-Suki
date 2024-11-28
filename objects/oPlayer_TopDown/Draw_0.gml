/// @description Draw Player
draw_sprite(SukiShadow, 0, x, y + zFloor);
if (look_left) {
	if (walking) {
		walkTimer--;
		if (walkTimer >= 15) {
			draw_sprite_ext(SukiLWalk2, 0, x, y + z,1,1,0,-1,1);
		} else {
			draw_sprite_ext(SukiLWalk, 0, x, y + z,1,1,0,-1,1);
		}
		if (walkTimer == 0) {
			walkTimer = 30;
		}
	} else {
		draw_sprite_ext(SukiLStand, 0, x, y + z,1,1,0,-1,1);
	}
} else {
	if (walking) {
		walkTimer--;
		if (walkTimer >= 15) {
			draw_sprite_ext(SukiRWalk2, 0, x, y + z,1,1,0,-1,1);
		} else {
			draw_sprite_ext(SukiRWalk, 0, x, y + z,1,1,0,-1,1);
		}
		if (walkTimer == 0) {
			walkTimer = 30;
		}
	} else {
		draw_sprite_ext(SukiRStand, 0, x, y + z,1,1,0,-1,1);
	}
}