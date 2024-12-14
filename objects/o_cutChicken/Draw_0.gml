if (o_cutManager.currentCut == "chicken") {	
	if (!cut1) { // draw whole carrot
		draw_sprite(cutChicken_P1,0,0,0);
		draw_sprite(cutChicken_P2,0,0,0);
		draw_sprite(cutChicken_P3,0,0,0);
		draw_sprite(cutChicken_P4,0,0,0);
		draw_sprite(Knife,0,1050,200);
	} else if (!cut2) {
		// draw transition if not done yet
		if (!inst1Destroy) { // make transition
			inst1Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutChicken_P1,0,0,0);
		draw_sprite(cutChicken_P2,0,0,0);
		draw_sprite(cutChicken_P3,0,0,0);
		draw_sprite(cutChicken_P4,0,0,0);
		draw_sprite(Knife,0,680,248);
	} else if (!cut3) {
		// draw transition if not done yet
		if (!inst2Destroy) { // make transition
			inst2Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutChicken_P1,0,32,0);
		draw_sprite(cutChicken_P2,0,0,0);
		draw_sprite(cutChicken_P3,0,0,0);
		draw_sprite(cutChicken_P4,0,0,0);
		draw_sprite(Knife,0,568,272);
	}  else if (cut3) {
		if (!inst3Destroy) { // make transition
			inst3Destroy = 1;
			instance_destroy(inst);
		} 
		
		if (timer >= 90) {
			draw_sprite(cutChicken_P1,0,48,0);
			draw_sprite(cutChicken_P2,0,24,0);
			draw_sprite(cutChicken_P3,0,0,0);
			draw_sprite(cutChicken_P4,0,0,0); 
			draw_sprite(Knife,0,416,352);
			timer--;
		}else if (timer > 0) { // display final cut for a few seconds
			draw_sprite(cutChicken_P1,0,48,0);
			draw_sprite(cutChicken_P2,0,24,0);
			draw_sprite(cutChicken_P3,0,0,0);
			draw_sprite(cutChicken_P4,0,-32,0);
			draw_sprite(Knife,0,1050,200);
			timer--;
		} else {
			timer--;
		}
		
		if (timer == 0) {
			if (room == SCut) {
				o_cutManager.val = 3/5;
			}
			o_cutManager.currentCut = "ronion";
		}
	}
}