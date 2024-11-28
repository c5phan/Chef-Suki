var collect = keyboard_check_pressed(ord("E"));

if (place_meeting(x,y,oPlayer_Side)) {
	showConfirm = 1;
} else {
	showConfirm = 0;
}

var manager = o_stewManager; // default Stew fridge
if (room = QF_Shelf2) {
	manager = o_quicheManager;
}
if (room = MF_Shelf3) {
	manager = o_macManager;
}

if (collect && showConfirm) {
	invenManage(o_tomato, manager, "tomato");
	if (global.effects == 1) {
		audio_play_sound(snd_pop,0,0);
	}
}