if (o_cutManager.currentCut == "bacon") {	
	if (!cut1) {
		if (!inst1Create) {
			inst = instance_create_layer(736,416,"Setting_Popup",o_cutCircle); // set at first cut spot
			inst1Create = 1;
		}
		if (inst.pressed == 1) {
			cut1 = 1;
		}
	} else if (!cut2) {
		if (!inst2Create) {
			inst = instance_create_layer(640,432,"Setting_Popup",o_cutCircle); // set at first cut spot
			inst2Create = 1;
		}
		if (inst.pressed == 1) {
			cut2 = 1;
		}	
	} else if (!cut3) {
		if (!inst3Create) {
			inst = instance_create_layer(560,432,"Setting_Popup",o_cutCircle); // set at first cut spot
			inst3Create = 1;
		}
		if (inst.pressed == 1) {
			cut3 = 1;
		}
	} else if (!cut4) {
		if (!inst4Create) {
			inst = instance_create_layer(480,432,"Setting_Popup",o_cutCircle); // set at first cut spot
			inst4Create = 1;
		}
		if (inst.pressed == 1) {
			cut4 = 1;
		}
	}
	
	if (instance_exists(inst)) {
		if (o_settingPop_btn.created == 1) { // hide circle during popup
			inst.depth = 1;
		} else {
			inst.depth = -1;
		}
	}
}