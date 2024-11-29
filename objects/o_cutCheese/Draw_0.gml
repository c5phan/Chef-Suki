if (o_cutManager.currentCut == "cheese") {	
	if (!cut1) {
		draw_sprite(cutCheese_P1,0,-150,0);
		draw_sprite(cutCheese_P2,0,-150,0);
		draw_sprite(cutCheese_P3,0,-150,0);
		draw_sprite(cutCheese_P4,0,-150,0);
		draw_sprite(cutCheese_P5,0,-150,0);
		draw_sprite(cutCheese_P6,0,-150,0);
		draw_sprite(cutCheese_P7,0,-150,0);
		draw_sprite(Knife,0,1050,200);
	} else if (!cut2) {
		// draw transition if not done yet
		if (!inst1Destroy) { // make transition
			inst1Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCheese_P1,0,-170,0);
		draw_sprite(cutCheese_P2,0,-150,0);
		draw_sprite(cutCheese_P3,0,-150,0);
		draw_sprite(cutCheese_P4,0,-150,0);
		draw_sprite(cutCheese_P5,0,-150,0);
		draw_sprite(cutCheese_P6,0,-150,0);
		draw_sprite(cutCheese_P7,0,-150,0);
		draw_sprite(Knife,0,416,272);
	} else if (!cut3) {
		// draw transition if not done yet
		if (!inst2Destroy) { // make transition
			inst2Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCheese_P1,0,-190,0);
		draw_sprite(cutCheese_P2,0,-170,0);
		draw_sprite(cutCheese_P3,0,-150,0);
		draw_sprite(cutCheese_P4,0,-150,0);
		draw_sprite(cutCheese_P5,0,-150,0);
		draw_sprite(cutCheese_P6,0,-150,0);
		draw_sprite(cutCheese_P7,0,-150,0);
		draw_sprite(Knife,0,496,272);
	} else if (!cut4) {
		// draw transition if not done yet
		if (!inst3Destroy) { // make transition
			inst3Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCheese_P1,0,-210,0);
		draw_sprite(cutCheese_P2,0,-190,0);
		draw_sprite(cutCheese_P3,0,-170,0);
		draw_sprite(cutCheese_P4,0,-150,0);
		draw_sprite(cutCheese_P5,0,-150,0);
		draw_sprite(cutCheese_P6,0,-150,0);
		draw_sprite(cutCheese_P7,0,-150,0);
		draw_sprite(Knife,0,560,272);
	} else if (!cut5) {
		// draw transition if not done yet
		if (!inst4Destroy) { // make transition
			inst4Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCheese_P1,0,-230,0);
		draw_sprite(cutCheese_P2,0,-210,0);
		draw_sprite(cutCheese_P3,0,-190,0);
		draw_sprite(cutCheese_P4,0,-170,0);
		draw_sprite(cutCheese_P5,0,-150,0);
		draw_sprite(cutCheese_P6,0,-150,0);
		draw_sprite(cutCheese_P7,0,-150,0);
		draw_sprite(Knife,0,624,272);
	} else if (!cut6) {
		// draw transition if not done yet
		if (!inst5Destroy) { // make transition
			inst5Destroy = 1;
			instance_destroy(inst);
		} 
		draw_sprite(cutCheese_P1,0,-250,0);
		draw_sprite(cutCheese_P2,0,-230,0);
		draw_sprite(cutCheese_P3,0,-210,0);
		draw_sprite(cutCheese_P4,0,-190,0);
		draw_sprite(cutCheese_P5,0,-170,0);
		draw_sprite(cutCheese_P6,0,-150,0);
		draw_sprite(cutCheese_P7,0,-150,0);
		draw_sprite(Knife,0,704,272);
	} else if (cut6) {
		if (!inst6Destroy) { // make transition
			inst6Destroy = 1;
			instance_destroy(inst);
		} 
		if (timer >= 90) {
			draw_sprite(cutCheese_P1,0,-250,0);
			draw_sprite(cutCheese_P2,0,-230,0);
			draw_sprite(cutCheese_P3,0,-210,0);
			draw_sprite(cutCheese_P4,0,-190,0);
			draw_sprite(cutCheese_P5,0,-170,0);
			draw_sprite(cutCheese_P6,0,-150,0);
			draw_sprite(cutCheese_P7,0,-150,0);
			draw_sprite(Knife,0,768,272);
			timer--;
		} else if (timer >= 10) { // display final cut for a few seconds
			draw_sprite(cutCheese_P1,0,-250,0);
			draw_sprite(cutCheese_P2,0,-230,0);
			draw_sprite(cutCheese_P3,0,-210,0);
			draw_sprite(cutCheese_P4,0,-190,0);
			draw_sprite(cutCheese_P5,0,-170,0);
			draw_sprite(cutCheese_P6,0,-150,0);
			draw_sprite(cutCheese_P7,0,-130,0);
			draw_sprite(Knife,0,1050,200);
			timer--;
		} else {
			timer--;
		}
		
		if (timer == 0) {
			if (room == QCut) {
				o_cutManager.currentCut = "bpepper";
			}
			if (room == MCut) {
				o_cutManager.currentCut = "bacon";
			}
		}
	}
}