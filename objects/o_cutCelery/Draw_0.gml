if (o_cutManager.currentCut == "celery") {	
	if (!cut1) {
		draw_sprite(cutCelery_P1,0,0,0);
		draw_sprite(cutCelery_P2,0,0,0);
		draw_sprite(cutCelery_P3,0,0,0);
		draw_sprite(cutCelery_P4,0,0,0);
		draw_sprite(cutCelery_P5,0,0,0);
		draw_sprite(cutCelery_P6,0,0,0);
		draw_sprite(cutCelery_P7,0,0,0);
		draw_sprite(Knife,0,1050,200);
	} else if (!cut2) {
		// draw transition if not done yet
		if (!inst1Destroy) { // make transition
			inst1Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCelery_P1,0,0,0);
		draw_sprite(cutCelery_P2,0,0,0);
		draw_sprite(cutCelery_P3,0,0,0);
		draw_sprite(cutCelery_P4,0,0,0);
		draw_sprite(cutCelery_P5,0,0,0);
		draw_sprite(cutCelery_P6,0,0,0);
		draw_sprite(cutCelery_P7,0,0,0);
		draw_sprite(Knife,0,816,240);
	} else if (!cut3) {
		// draw transition if not done yet
		if (!inst2Destroy) { // make transition
			inst2Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCelery_P1,0,20,0);
		draw_sprite(cutCelery_P2,0,0,0);
		draw_sprite(cutCelery_P3,0,0,0);
		draw_sprite(cutCelery_P4,0,0,0);
		draw_sprite(cutCelery_P5,0,0,0);
		draw_sprite(cutCelery_P6,0,0,0);
		draw_sprite(cutCelery_P7,0,0,0);
		draw_sprite(Knife,0,736,240);
	} else if (!cut4) {
		// draw transition if not done yet
		if (!inst3Destroy) { // make transition
			inst3Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCelery_P1,0,40,0);
		draw_sprite(cutCelery_P2,0,20,0);
		draw_sprite(cutCelery_P3,0,0,0);
		draw_sprite(cutCelery_P4,0,0,0);
		draw_sprite(cutCelery_P5,0,0,0);
		draw_sprite(cutCelery_P6,0,0,0);
		draw_sprite(cutCelery_P7,0,0,0);
		draw_sprite(Knife,0,656,288);
	} else if (!cut5) {
		// draw transition if not done yet
		if (!inst4Destroy) { // make transition
			inst4Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCelery_P1,0,60,0);
		draw_sprite(cutCelery_P2,0,40,0);
		draw_sprite(cutCelery_P3,0,20,0);
		draw_sprite(cutCelery_P4,0,0,0);
		draw_sprite(cutCelery_P5,0,0,0);
		draw_sprite(cutCelery_P6,0,0,0);
		draw_sprite(cutCelery_P7,0,0,0);
		draw_sprite(Knife,0,576,288);
	} else if (!cut6) {
		// draw transition if not done yet
		if (!inst5Destroy) { // make transition
			inst5Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCelery_P1,0,80,0);
		draw_sprite(cutCelery_P2,0,60,0);
		draw_sprite(cutCelery_P3,0,40,0);
		draw_sprite(cutCelery_P4,0,20,0);
		draw_sprite(cutCelery_P5,0,0,0);
		draw_sprite(cutCelery_P6,0,0,0);
		draw_sprite(cutCelery_P7,0,0,0);
		draw_sprite(Knife,0,496,336);
	} else if (cut6) {
		if (!inst6Destroy) { // make transition
			inst6Destroy = 1;
			instance_destroy(inst);
		} 
		if (timer >= 90) {
			draw_sprite(cutCelery_P1,0,100,0);
			draw_sprite(cutCelery_P2,0,80,0);
			draw_sprite(cutCelery_P3,0,60,0);
			draw_sprite(cutCelery_P4,0,40,0);
			draw_sprite(cutCelery_P5,0,20,0);
			draw_sprite(cutCelery_P6,0,0,0);
			draw_sprite(cutCelery_P7,0,0,0);
			draw_sprite(Knife,0,416,336);
			timer--;
		} else if (timer >= 10) { // display final cut for a few seconds
			draw_sprite(cutCelery_P1,0,120,0);
			draw_sprite(cutCelery_P2,0,100,0);
			draw_sprite(cutCelery_P3,0,80,0);
			draw_sprite(cutCelery_P4,0,60,0);
			draw_sprite(cutCelery_P5,0,40,0);
			draw_sprite(cutCelery_P6,0,20,0);
			draw_sprite(cutCelery_P7,0,0,0);
			draw_sprite(Knife,0,1050,200);
			timer--;
		} else {
			timer--;
		}
		
		if (timer == 0) {
			if (room == SCut) {
				o_cutManager.val = 1;
				o_cutManager.currentCut = "done";
			}
		}
	}
}