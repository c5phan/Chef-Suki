if (o_cutManager.currentCut == "carrot") {	
	if (!cut1) { // draw whole carrot
		draw_sprite(cutCarrot_P1,0,0,0);
		draw_sprite(cutCarrot_P2,0,0,0);
		draw_sprite(cutCarrot_P3,0,0,0);
		draw_sprite(cutCarrot_P4,0,0,0);
		draw_sprite(cutCarrot_P5,0,0,0);
		draw_sprite(Knife,0,1050,200);
	} else if (!cut2) {
		// draw transition if not done yet
		if (!inst1Destroy) { // make transition
			inst1Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCarrot_P1,0,10,0);
		draw_sprite(cutCarrot_P2,0,0,0);
		draw_sprite(cutCarrot_P3,0,0,0);
		draw_sprite(cutCarrot_P4,0,0,0);
		draw_sprite(cutCarrot_P5,0,0,0); 
		draw_sprite(Knife,0,750,350);
	} else if (!cut3) {
		// draw transition if not done yet
		if (!inst2Destroy) { // make transition
			inst2Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCarrot_P1,0,20,0);
		draw_sprite(cutCarrot_P2,0,10,0);
		draw_sprite(cutCarrot_P3,0,0,0);
		draw_sprite(cutCarrot_P4,0,0,0);
		draw_sprite(cutCarrot_P5,0,0,0); 
		draw_sprite(Knife,0,640,328);
	} else if (!cut4) {
		// draw transition if not done yet
		if (!inst3Destroy) { // make transition
			inst3Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCarrot_P1,0,30,0);
		draw_sprite(cutCarrot_P2,0,20,0);
		draw_sprite(cutCarrot_P3,0,10,0);
		draw_sprite(cutCarrot_P4,0,0,0);
		draw_sprite(cutCarrot_P5,0,0,0); 
		draw_sprite(Knife,0,528,344);
	} else if (cut4) {
		if (!inst4Destroy) { // make transition
			inst4Destroy = 1;
			instance_destroy(inst);
		} 
		if (timer >= 90) {
			draw_sprite(cutCarrot_P1,0,40,0);
			draw_sprite(cutCarrot_P2,0,30,0);
			draw_sprite(cutCarrot_P3,0,20,0);
			draw_sprite(cutCarrot_P4,0,10,0);
			draw_sprite(cutCarrot_P5,0,0,0); 
			draw_sprite(Knife,0,416,352);
			timer--;
		} else if (timer >= 10) { // display final cut for a few seconds
			draw_sprite(cutCarrot_P1,0,50,0);
			draw_sprite(cutCarrot_P2,0,40,0);
			draw_sprite(cutCarrot_P3,0,30,0);
			draw_sprite(cutCarrot_P4,0,20,0);
			draw_sprite(cutCarrot_P5,0,10,0); 
			draw_sprite(Knife,0,1050,200);
			timer--;
		} else {
			timer--;
		}
		
		if (timer == 0) {
			o_cutManager.currentCut = "potato";
		}
	}
}