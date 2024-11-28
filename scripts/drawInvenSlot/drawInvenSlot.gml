// draws the inven sprite in the top left corner for the designated ingridient
function drawInvenSlot(_sprite, _index, _select, _amount) {
	draw_sprite_ext(_sprite, 0, camera_get_view_x(view_camera[0]) + 32 * _index,
						camera_get_view_y(view_camera[0]),0.5,0.5,0,-1,1);
	draw_set_color(c_white);
	draw_text_transformed(camera_get_view_x(view_camera[0]) + 10 + 32 * i,
						 camera_get_view_y(view_camera[0]) + 20, _amount,0.5,0.5,-1);
	if (_select == _index) {
		draw_sprite_ext(inven_select, 0, camera_get_view_x(view_camera[0]) + 32 * _index,
						camera_get_view_y(view_camera[0]),0.5,0.5,0,-1,1);
	}
}