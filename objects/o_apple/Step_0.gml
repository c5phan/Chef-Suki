var collect = keyboard_check_pressed(ord("E"));

if (place_meeting(x,y,oPlayer_Side)) {
	showConfirm = 1;
} else {
	showConfirm = 0;
}

if (collect && showConfirm) {
	found = 0;
	for (i = 0; i < 5; i++) {
		if (o_ingredients.name[i] == "apple") {
			found = 1;
			if (o_ingredients.inven[i] < 12) { // check if in inventory
				o_ingredients.inven[i]++;
			}
			break;
		}
	}
	if (!found && o_ingredients.unique < 5) { // not full and didnt add
		o_ingredients.unique++;
		o_ingredients.inven[o_ingredients.unique - 1]++;
		o_ingredients.name[o_ingredients.unique - 1] = "apple";
	}
	holdE = 0;
}