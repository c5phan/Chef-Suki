if (o_cutManager.currentCut == "ronion") {	
	if (!cut1) { // draw whole ronion
		draw_sprite_ext(wholeOnion,0,152,136,0.7875,0.7777,0,-1,1);
		draw_sprite(Knife,0,1050,200);
	} else if (cut1) {
		// draw transition if not done yet
		if (!inst1Destroy) { // make transition
			inst1Destroy = 1;
			instance_destroy(inst);
		} 
		
		if (timer >= 90) {	
			draw_sprite_ext(wholeOnion,0,152,136,0.7875,0.7777,0,-1,1);
			draw_sprite(Knife,0,592,224);
			timer--;
		} else if (timer > 0) {	// display final cut for a few seconds
			draw_sprite(cutOnion_P1,0,0,0);
			draw_sprite(cutOnion_P2,0,0,0);
			draw_sprite(Knife,0,1050,200);
			timer--;
		} else {
			timer--;
		}
		if (timer == 0) {
			if (room == SCut) {
				o_cutManager.val = 4/5;
				o_cutManager.currentCut = "celery";
			}
		}
	} 
}