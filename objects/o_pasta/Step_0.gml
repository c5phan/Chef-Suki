var collect = keyboard_check_pressed(ord("E"));

if (place_meeting(x,y,oPlayer_Side)) {
	showConfirm = 1;
} else {
	showConfirm = 0;
}

var manager = o_stewManager; // default Stew fridge
if (room = QF_Shelf4) {
	manager = o_quicheManager;
}
if (room = MF_Shelf1) {
	manager = o_macManager;
}


if (collect && showConfirm) {
	invenManage(o_pasta, manager, "pasta");
}