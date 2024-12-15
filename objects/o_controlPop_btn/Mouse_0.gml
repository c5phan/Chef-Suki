// move with camera
if (!created && !o_settingPop_btn.created) {
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 112;
	y = camera_get_view_y(view_camera[0]) + 55;
	
	// make popup in center of camera
	_d = instance_create_layer(camera_get_view_x(view_camera[0]) + 20, 
							   camera_get_view_y(view_camera[0]) + 70, "Setting_Popup",o_ctrlDestroy);
	_d.image_xscale = 1.8;
	_d.image_yscale = 0.5;
	
	_pop = instance_create_layer(camera_get_view_x(view_camera[0]),
								  camera_get_view_y(view_camera[0]) + 30 ,"Setting_Popup",o_ctrlPop);
	_pop.image_xscale = 0.5;
	_pop.image_yscale = 0.5;

	_d.pop = _pop;
	_d.caller = id;
	
	created = 1;
}
