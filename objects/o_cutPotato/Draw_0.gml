if (o_cutManager.currentCut == "potato") {	
	if (!cut1) { // draw whole potato
		draw_sprite(cutPotato_P1,0,0,0);
		draw_sprite(cutPotato_P2,0,35,0);
		draw_sprite(cutPotato_P3,0,70,0);
		draw_sprite(cutPotato_P4,0,105,0);
		draw_sprite(Knife,0,1050,200);
	} else if (!cut2) {
		// draw transition if not done yet
		if (!inst1Destroy) { // make transition
			inst1Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutPotato_P1,0,0,0);
		draw_sprite(cutPotato_P2,0,35,0);
		draw_sprite(cutPotato_P3,0,70,0);
		draw_sprite(cutPotato_P4,0,105,0);
		draw_sprite(Knife,0,752,240);
	} else if (!cut3) {
		// draw transition if not done yet
		if (!inst2Destroy) { // make transition
			inst2Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutPotato_P1,0,16,0);
		draw_sprite(cutPotato_P2,0,35,0);
		draw_sprite(cutPotato_P3,0,70,0);
		draw_sprite(cutPotato_P4,0,105,0);
		draw_sprite(Knife,0,664,240);
	} else if (cut3) {
		if (!inst3Destroy) { // make transition
			inst3Destroy = 1;
			instance_destroy(inst);
		} 
		if (timer >= 90) {
			draw_sprite(cutPotato_P1,0,40,0);
			draw_sprite(cutPotato_P2,0,56,0);
			draw_sprite(cutPotato_P3,0,70,0);
			draw_sprite(cutPotato_P4,0,105,0);
			draw_sprite(Knife,0,568,272);
			timer--;
		} else if (timer >= 10) { // display final cut for a few seconds
			draw_sprite(cutPotato_P1,0,40,0);
			draw_sprite(cutPotato_P2,0,56,0);
			draw_sprite(cutPotato_P3,0,70,0);
			draw_sprite(cutPotato_P4,0,80,0);
			draw_sprite(Knife,0,1050,200);
			timer--;
		} else {
			timer--;
		}
		
		if (timer == 0) {
			if (room == SCut) {
				o_cutManager.val = 2/5;
			}
			o_cutManager.currentCut = "chicken";
		}
	}
}