if (place_meeting(x,y,oPlayer_Side)) {
	o_quicheManager.end_level = 1;
	
	for (i = 0; i < 6; i++) {
		if (o_quicheManager.name[i] == "egg") {
			got_egg = o_quicheManager.inven[i];
		}
		if (o_quicheManager.name[i] == "hcream") {
			got_hcream = o_quicheManager.inven[i];
		}
		if (o_quicheManager.name[i] == "bpepper") {
			got_bpepper = o_quicheManager.inven[i];
		}
		if (o_quicheManager.name[i] == "cheese") {
			got_cheese = o_quicheManager.inven[i];
		}
		if (o_quicheManager.name[i] == "pastry") {
			got_pastry = o_quicheManager.inven[i];
		}
		if (o_quicheManager.name[i] == "bacon") {
			got_bacon = o_quicheManager.inven[i];
		}
	}
	entered = 1;
} 

if (entered) {
	a = min(a+0.015, 1)
}

if (a == 1) {
	// determine star
	if (got_egg == o_quicheManager.need_egg) {
		point += 0.5;
	}
	if (got_hcream == o_quicheManager.need_hcream) {
		point += 0.5;
	}
	if (got_bpepper == o_quicheManager.need_bpepper) {
		point += 0.5;
	}
	if (got_cheese == o_quicheManager.need_cheese) {
		point += 0.5;
	}
	if (got_pastry == o_quicheManager.need_pastry) {
		point += 0.5;
	}
	if (got_bacon == o_quicheManager.need_bacon) {
		point += 0.5;
	}
		
	starCount.QF_stars = floor(point); // round down
	room_goto(QCut);
}