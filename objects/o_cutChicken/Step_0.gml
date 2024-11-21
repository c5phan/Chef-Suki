if (o_cutManager.currentCut == "chicken") {	
	if (!cut1) {
		if (!inst1Create) {
			inst = instance_create_layer(688,392,"Setting_Popup",o_cutCircle); // set at first cut spot
			inst1Create = 1;
		}
		if (inst.pressed == 1) {
			cut1 = 1;
		}
	} else if (!cut2) {
		if (!inst2Create) {
			inst = instance_create_layer(568,400,"Setting_Popup",o_cutCircle); // set at first cut spot
			inst2Create = 1;
		}
		if (inst.pressed == 1) {
			cut2 = 1;
		}	
	} else if (!cut3) {
		if (!inst3Create) {
			inst = instance_create_layer(456,440,"Setting_Popup",o_cutCircle); // set at first cut spot
			inst3Create = 1;
		}
		if (inst.pressed == 1) {
			cut3 = 1;
		}
	} 
	
	if (instance_exists(inst)) {
		if (o_settingPop_btn.created == 1) { // hide circle during popup
			inst.depth = 1;
		} else {
			inst.depth = 0;
		}
	}
}