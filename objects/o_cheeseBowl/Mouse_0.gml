if ((!pause && created < 6) && !instance_exists(o_cheesePlace)) {
	// only create one at a time, must place obefore next one created
	created++;
	instance_create_layer(mouse_x,mouse_y,"Setting_Popup",o_cheesePlace);
}