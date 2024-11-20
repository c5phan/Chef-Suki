var collect = keyboard_check_pressed(ord("E"));

if (place_meeting(x,y,oPlayer_Side)) {
	showConfirm = 1;
} else {
	showConfirm = 0;
}

if (collect && showConfirm) {
	found = 0;
	for (i = 0; i < 6; i++) {
		if (o_ingredients.name[i] == "mayo") {
			found = 1;
			if (o_ingredients.inven[i] < 12) { // check if in inventory
				o_ingredients.inven[i]++;
			}
			break;
		}
	}
	if (!found && o_ingredients.unique < 6) { // not full and didnt add
		// find first empty
		for (i = 0; i < 6; i++) {
			if (o_ingredients.inven[i] == 0) {
				o_ingredients.unique++;
				o_ingredients.inven[i]++;
				o_ingredients.name[i] = "mayo";
				break;
			}
		}
	}
	holdE = 0;
}