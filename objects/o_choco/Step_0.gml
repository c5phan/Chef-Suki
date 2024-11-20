/// @description Insert description here
// You can write your code in this editor
timer--;

var manager= o_stewManager; // default
if (room == QF_Shelf1 || QF_Shelf4) {
	manager = o_quicheManager;
}

if (timer <= 90) {  // check if in hit box during the 1.5 secs
	if (place_meeting(x,y,oPlayer_Side)) {
		// suki got hit by choco so empty inventory
		for (i = 0; i < 6; i++) {
			manager.inven[i] = 0;
			manager.name[i] = "";
		}
		manager.unique = 0;
	}
}

if (timer == 0) {
	timer = time;
}