x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 112;
y = camera_get_view_y(view_camera[0]) + 55;
	
// want to move the instaces part of the pop up along with the camera
if (created) {
	_d.x = camera_get_view_x(view_camera[0]) + 190;
	_d.y = camera_get_view_y(view_camera[0]) + 80;
	_pop.x = camera_get_view_x(view_camera[0]);
	_pop.y = camera_get_view_y(view_camera[0]) + 30;
}

