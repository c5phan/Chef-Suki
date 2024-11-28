var collect = keyboard_check_pressed(ord("E"));

if (place_meeting(x,y,oPlayer_Side)) {
	showConfirm = 1;
} else {
	showConfirm = 0;
}

var manager = o_stewManager; // default Stew fridge
if (room = QF_Shelf3) {
	manager = o_quicheManager;
}
if (room = MF_Shelf2) {
	manager = o_macManager;
}


if (collect && showConfirm) {
	invenManage(o_carrot, manager, "carrot");
	if (global.effects == 1) {
		audio_sound_pitch(snd_pop,1);
		audio_play_sound(snd_pop,0,0);
	}
}
