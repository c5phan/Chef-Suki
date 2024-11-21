if ((room != Cookbook_P1 && room != Cookbook_P2) && (room != Cookbook_P3 && !created)) {
	// move with camera
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 110;
	y = camera_get_view_y(view_camera[0]) + 25;
	
	// make popup in center of camera
	_e = instance_create_layer(camera_get_view_x(view_camera[0]) + 376,
								   camera_get_view_y(view_camera[0]) + 136,"Setting_Popup",o_sndEffects);
	_e.image_xscale = 0.5;
	_e.image_yscale = 0.5;
	
	_m = instance_create_layer(camera_get_view_x(view_camera[0]) + 376,
								   camera_get_view_y(view_camera[0]) + 180,"Setting_Popup",o_sndMusic);
	_m.image_xscale = 0.5;
	_m.image_yscale = 0.5;
	
	_q = instance_create_layer(camera_get_view_x(view_camera[0]) + 328,
								   camera_get_view_y(view_camera[0]) + 224,"Setting_Popup",o_quit);
	_q.image_xscale = 1.857;
	_q.image_yscale = 0.75;
	
	_d = instance_create_layer(camera_get_view_x(view_camera[0]) + 192, 
								   camera_get_view_y(view_camera[0]) + 224, "Setting_Popup",o_popDestroy);
	_d.image_xscale = 1.857;
	_d.image_yscale = 0.75;
	
	_pop = instance_create_layer(camera_get_view_x(view_camera[0]),
									 camera_get_view_y(view_camera[0]) ,"Setting_Popup",o_settingPop);
	_pop.image_xscale = 0.5;
	_pop.image_yscale = 0.5;

	_d.pop = _pop;
	_d.e = _e;
	_d.m = _m;
	_d.q = _q;
	_d.caller = id;
	
	created = 1;
	
} 

if (room == Cookbook_P1 || room == Cookbook_P2 || room == Cookbook_P3) { // cookbook room
	_e = instance_create_layer(752,272,"Setting_Popup",o_sndEffects);
	_m = instance_create_layer(752,360,"Setting_Popup",o_sndMusic);
	_q = instance_create_layer(656,448,"Setting_Popup",o_quit);
	_q.image_xscale = 3.75;
	_q.image_yscale = 1.5;
	_d = instance_create_layer(384, 448, "Setting_Popup",o_popDestroy);
	_d.image_xscale = 3.75;
	_d.image_yscale = 1.5;
	_pop = instance_create_layer(0,0,"Setting_Popup",o_settingPop);

	_d.pop = _pop;
	_d.e = _e;
	_d.m = _m;
	_d.q = _q;
} 



