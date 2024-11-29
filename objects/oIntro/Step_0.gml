if (next <= 1) {
	camera_set_view_size(view_camera[0],1280,720);
	camera_set_view_pos(view_camera[0],0, 0);
	layer_set_visible("Giant", 1);
	layer_set_visible("Book", 0);
	layer_set_visible("Fridge", 0);
	layer_set_visible("Close", 0);
	
} else if (next <= 6) {
	if (next == 2) {
		camera_set_view_size(view_camera[0],640,360);
		xpos = 640;
	}
	layer_set_visible("Giant", 0);
	layer_set_visible("Book", 1);
	layer_set_visible("Fridge", 0);
	layer_set_visible("Close", 0);
	camera_set_view_pos(view_camera[0],xpos, 180); // 180 for y value
	xpos = max(xpos-0.5,0); // reduce by 0.3 per frame till it hits 0
} else if (next <= 10) {
	if (next == 7) {
		camera_set_view_size(view_camera[0],640,360);
		xpos = 640;
	}
	layer_set_visible("Giant", 0);
	layer_set_visible("Book", 0);
	layer_set_visible("Fridge", 1);
	layer_set_visible("Close", 0);
	camera_set_view_pos(view_camera[0],xpos, 180); // 180 for y value
	xpos = max(xpos-0.5,0); // reduce by 0.3 per frame till it hits 0
} else {
	if (next == 11) {
		camera_set_view_size(view_camera[0],640,360);
		xpos = 640;
	}
	layer_set_visible("Giant", 0);
	layer_set_visible("Book", 0);
	layer_set_visible("Fridge", 0);
	layer_set_visible("Close", 1);
	camera_set_view_pos(view_camera[0],xpos, 180); // 180 for y value
	xpos = max(xpos-0.5,0); // reduce by 0.3 per frame till it hits 0
}


if (!fadeout) {
	a = max(a-0.005,0.25); // fade in, want to decrease the transparency of black rectangle
} else {
	a = min(a+0.005,1); // fade out
}

pos += 0.5; // adds a letter per two frames
print = string_copy(str,1,pos); // substring from 1 to pos

// 100 determine how long we wait to move to next one
if (pos > string_length(str) + 100 && next < array_length(story) - 1) {
	pos = 0;
	next++;
	if (next == array_length(story) - 1) {
		holdspace++; // reached end 
	}
}
str = story[next];

if (keyboard_check_direct(vk_space)) {
	holdspace++;
}

if (holdspace > 80 || (xpos < 100 && next == array_length(story) - 1)) {
	fadeout = 1;
}

if (a == 1 && fadeout == 1) {
	room_goto(StartMenu);
}