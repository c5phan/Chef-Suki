if ((room != Cookbook_P1 && room != Cookbook_P2) && room != Cookbook_P3) {
	// move with camera
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 110;
	y = camera_get_view_y(view_camera[0]) + 25;
	
	// want to move the instaces part of the pop up along with the camera
	if (created) {
		_e.x = camera_get_view_x(view_camera[0]) + 376;
		_e.y = camera_get_view_y(view_camera[0]) + 136;
		_m.x = camera_get_view_x(view_camera[0]) + 376;
		_m.y = camera_get_view_y(view_camera[0]) + 180;
		_q.x = camera_get_view_x(view_camera[0]) + 328;
		_q.y = camera_get_view_y(view_camera[0]) + 224;
		_d.x = camera_get_view_x(view_camera[0]) + 192;
		_d.y = camera_get_view_y(view_camera[0]) + 224;
		_pop.x = camera_get_view_x(view_camera[0]);
		_pop.y = camera_get_view_y(view_camera[0]);
	}
} 

