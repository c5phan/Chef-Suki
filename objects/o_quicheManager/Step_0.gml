// dropping function
if (!end_level) {
	drop = keyboard_check_pressed(ord("Q"));
	if (drop) {
		if (inven[select] > 0)
		{
			inven[select]--;
			if (inven[select] == 0) { // dropped everything
				unique--;
			}
		}
	}

	if mouse_wheel_up()
	{
	    select++;
		if (select > 4) {
			select = 0;
		}
	}

	if mouse_wheel_down()
	{
	    select--;
		if (select < 0) {
			select = 4;
		}
	}
}

