// Task
draw_sprite_ext(StewTask, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 110,
				camera_get_view_y(view_camera[0]),0.5,0.5,0,-1,1)

// Inventory
for (i = 0; i < 5; i++) {
	if (inven[i] == 0) {
		name[i] = "";
		drawInvenSlot(inven_empty, i, select, string(0));
	} else {
		if (name[i] == "carrot") {
			drawInvenSlot(inven_carrot, i, select, string(inven[i]));
		}
	}
}
