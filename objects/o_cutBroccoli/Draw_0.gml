if (o_cutManager.currentCut == "broccoli") {	
	if (!cut1) { // draw whole broccoli
		draw_sprite(cutBroccoli_P1,0,0,0);
		draw_sprite(cutBroccoli_P2,0,0,0);
		draw_sprite(cutBroccoli_P3,0,0,0);
		draw_sprite(cutBroccoli_P4,0,0,0);
		draw_sprite(Knife,0,1050,200);
	} else if (!cut2) {
		// draw transition if not done yet
		if (!inst1Destroy) { // make transition
			inst1Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutBroccoli_P1,0,0,0);
		draw_sprite(cutBroccoli_P2,0,0,0);
		draw_sprite(cutBroccoli_P3,0,0,0);
		draw_sprite(cutBroccoli_P4,0,0,0);
		draw_sprite(Knife,0,545,256);
	} else if (!cut3) {
		// draw transition if not done yet
		if (!inst2Destroy) { // make transition
			inst2Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutBroccoli_P1,0,0,0);
		draw_sprite(cutBroccoli_P2,0,50,0);
		draw_sprite(cutBroccoli_P3,0,0,0);
		draw_sprite(cutBroccoli_P4,0,50,0);
		draw_sprite(Knife,0,640,248);
	}  else if (cut3) {
		if (!inst3Destroy) { // make transition
			inst3Destroy = 1;
			instance_destroy(inst);
		} 
		
		if (timer >= 90) {
			draw_sprite(cutBroccoli_P1,0,0,0);
			draw_sprite(cutBroccoli_P2,0,50,0);
			draw_sprite(cutBroccoli_P3,0,0,0);
			draw_sprite(cutBroccoli_P4,0,50,30); 
			draw_sprite(Knife,0,476,264);
			timer--;
		}else if (timer > 0) { // display final cut for a few seconds
			draw_sprite(cutBroccoli_P1,0,0,0);
			draw_sprite(cutBroccoli_P2,0,50,0);
			draw_sprite(cutBroccoli_P3,0,0,30);
			draw_sprite(cutBroccoli_P4,0,50,30); 
			draw_sprite(Knife,0,1050,200);
			timer--;
		} else {
			timer--;
		}
		
		if (timer == 0) {
			o_cutManager.val = 1;
			o_cutManager.currentCut = "done";
		}
	}
}