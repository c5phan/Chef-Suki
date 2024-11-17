var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var jump = keyboard_check_pressed(vk_space);
var collect = keyboard_check(ord("E"));
var drop = keyboard_check(ord("Q"));
var dash = keyboard_check(vk_shift);

// dash - double tap 
var left_double = false;
var right_double = false;
var up_double = false;
var down_double = false;

// left, right, up, down movement
if (left) {
	look_left = true;
	xSpeed = -moveSpeed;
} 

if (right) {
	look_left = false;
	xSpeed = moveSpeed;
}

if (up) {
	ySpeed = -moveSpeed;
} 

if (down) {
	ySpeed = moveSpeed;
}

// stop moving when keys no longer pressed
if (!up && !down || up && down) {
	ySpeed = 0;
}

if (!left && !right || left && right) {
	xSpeed = 0;
}

// dashing
if (dash && left || dash && right) {
	xSpeed *= 2;
}
if (dash && up || dash && down) {
	ySpeed *= 2;
}

// Jumping
if (jump && zSpeed == 0) {
	zSpeed = jumpSpeed;
}

// Gravity
if (z != zFloor) {
	zSpeed += gameGravity;
}

// Snap to ground
if (z + zSpeed > zFloor) {
	zSpeed = 0;
	z = zFloor;
}

// move along axis using Speed
if (x + xSpeed < 0) {
	x = 0;
} else if (x + xSpeed > 1280) {
	x = 1280;
} else {
	x += xSpeed;
}

if (y + ySpeed < 0) {
	y = 0;
} else if (y + ySpeed > 720) {
	y = 720;
} else {
	y += ySpeed;
}

z += zSpeed;
