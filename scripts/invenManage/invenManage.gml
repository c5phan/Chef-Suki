// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function invenManage(_obj, _manager, ingr){
	_obj.found = 0;
	for (i = 0; i < 6; i++) {
		if (_manager.name[i] == ingr) {
			_obj.found = 1;
			if (_manager.inven[i] < 12) { // check if in inventory
				_manager.inven[i]++;
			}
			break;
		}
	}
	if (!(_obj.found) && _manager.unique < 6) { // not full and didnt add
		// find first empty
		for (i = 0; i < 6; i++) {
			if (_manager.inven[i] == 0) {
				_manager.unique++;
				_manager.inven[i]++;
				_manager.name[i] = ingr;
				break;
			}
		}
	}
	_obj.holdE = 0;
}