if (o_ovenManager.current == "mac" && !o_ovenManager.pause) {
	
	// calculate time in oven for each time
	if ((o_dragMacCheese.in_oven && o_dial.temp == 350) && !o_OpenClose.open) {
		time350++;
	}
	if ((o_dragMacCheese.in_oven && o_dial.temp == 375) && !o_OpenClose.open) {
		time375++;
	}
	if ((o_dragMacCheese.in_oven && o_dial.temp == 400) && !o_OpenClose.open) {
		time400++;
	}
	if ((o_dragMacCheese.in_oven && o_dial.temp == 425) && !o_OpenClose.open) {
		time425++;
	}
	if ((o_dragMacCheese.in_oven && o_dial.temp == 450) && !o_OpenClose.open) {
		time450++;
	}
	
	stepTimer--;
	if (stepTimer <= 0){ // go to next step
		step++;
		stepTimer = 600;
		if (step > lastStep) { // end baking
			o_ovenManager.current = "done";
		}
	}
}