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

// move along axis using Speed
if (x + xSpeed < 0) { // left of room
	x = 0;
} else if (x + xSpeed > room_width - 60) { // right of room
	x = room_width - 60;
} else {
	x += xSpeed;
}

// Gravity
ySpeed += gameGravity; 

// Vertical Movement and Platform/Ground Detection
var platformBelow = instance_place(x, (y + sprite_height - 30) + ySpeed, o_platform); 
if (platformBelow != noone) { // platform at x, y+ySpeed
    var platformTop = y;
	while (!place_meeting(x, platformTop + 1, platformBelow)) { // find top
		platformTop++;
		if (platformTop > yFloor) {
			platformTop = yFloor;
		}
	}
	if (y + ySpeed > platformTop) { // Landing on the platform
	    y = platformTop; // Align with the top of the platform
	    ySpeed = 0;      // Stop falling
	} else {
	   y += ySpeed; // Still falling toward the platform
	}
} else if (y + ySpeed > yFloor) { // y is past yFloor
    y = yFloor;
    ySpeed = 0; // Stop falling
} else {
    y += ySpeed; 
}

// Solid Object Collision
if (place_meeting(x, y + ySpeed, o_solid)) {
    while (place_meeting(x, y, o_solid)) {
        y--; // Align above the solid
    }
    ySpeed = 0; // Stop vertical movement
}

// Room Bounds
if (x + xSpeed < 0) {
    x = 0;
} else if (x + xSpeed > room_width - 60) {
    x = room_width - 60;
} else {
    x += xSpeed; // Horizontal movement
}

if (y < 0) { // Prevent going above the room
    y = 0;
    ySpeed = 0;
}

