/// @description Insert description here
// You can write your code in this editor
timer--;

if (timer == 0) {
	if (place_meeting(x,y,oPlayer_Side)) {
		// suki got hit by choco so empty inventory
		for (i = 0; i < 6; i++) {
			o_ingredients.inven[i] = 0;
			o_ingredients.name[i] = "";
		}
	}
	timer = time;
}