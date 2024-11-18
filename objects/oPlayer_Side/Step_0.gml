var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var jump = keyboard_check_pressed(vk_space);
var dash = keyboard_check(vk_shift);

// left, right, movement
if (left) {
	look_left = true;
	xSpeed = -moveSpeed;
} 

if (right) {
	look_left = false;
	xSpeed = moveSpeed;
}


if (!left && !right || left && right) {
	xSpeed = 0;
}

// dashing
if (dash && left || dash && right) {
	xSpeed *= 2;
}

// Jumping
if (jump && ySpeed == 0) {
	ySpeed = jumpSpeed;
}

// Gravity
if (y != yFloor) {
	ySpeed += gameGravity;
}

// Snap to ground
if (y + ySpeed > yFloor) {
	ySpeed = 0;
	y = yFloor;
}


// move along axis using Speed
if (x + xSpeed < 0) { // left of room
	x = 0;
} else if (x + xSpeed > room_width - 60) { // right of room
	x = room_width - 60;
} else {
	x += xSpeed;
}

platformBelow = instance_place(x, y + ySpeed, o_platform);
if (ySpeed > 0) { // falling 
	if (platformBelow == noone) { 
		while (!place_meeting(x, y + 1, o_platform)) {
			y++;
			if (y > room_height) { break; }
		}
		ySpeed = 0;
	}
} 

if (place_meeting(x, y + ySpeed, o_solid)) { // colliding with solid
	y = y + ySpeed;
	while (place_meeting(x, y, o_solid)) {
	  y--;
	}
	ySpeed = 0;
} 

if (y + ySpeed < 0){ // top of room
	y = 0;
} else if (y + ySpeed > room_height - 60) { // bot of room
	y = yFloor;
} else {
	y += ySpeed;
}
