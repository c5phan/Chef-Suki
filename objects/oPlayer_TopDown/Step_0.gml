var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var jump = keyboard_check_pressed(vk_space);
var dash = keyboard_check(vk_shift);
walking = 0;
// left, right, up, down movement
if (left) {
	look_left = true;
	xSpeed = -moveSpeed;
	walking = 1;
} 

if (right) {
	look_left = false;
	xSpeed = moveSpeed;
	walking = 1;
}

if (up) {
	ySpeed = -moveSpeed;
	walking = 1;
} 

if (down) {
	ySpeed = moveSpeed;
	walking = 1;
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
} else if (x + xSpeed > 1220) {
	x = 1220;
} else {
	x += xSpeed;
}

if (y + ySpeed < 0) {
	y = 0;
} else if (y + ySpeed > 660) {
	y = 660;
} else {
	y += ySpeed;
}

z += zSpeed;
