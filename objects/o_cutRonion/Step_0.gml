if (o_cutManager.currentCut == "ronion") {	
	if (!cut1) {
		if (!inst1Create) {
			inst = instance_create_layer(624,400,"Setting_Popup",o_cutCircle); // set at first cut spot
			inst1Create = 1;
		}
		if (inst.pressed == 1) {
			cut1 = 1;
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