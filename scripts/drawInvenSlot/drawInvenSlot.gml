// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawInvenSlot(_sprite, _index, _select, _amount) {
	draw_sprite_ext(_sprite, 0, camera_get_view_x(view_camera[0]) + 32 * _index,
						camera_get_view_y(view_camera[0]),0.5,0.5,0,-1,1);
	draw_text_transformed(camera_get_view_x(view_camera[0]) + 10 + 32 * i,
						 camera_get_view_y(view_camera[0]) + 20, _amount,0.5,0.5,-1);
	if (_select = _index) {
		draw_sprite_ext(inven_select, 0, camera_get_view_x(view_camera[0]) + 32 * _index,
						camera_get_view_y(view_camera[0]),0.5,0.5,0,-1,1);
	}
}