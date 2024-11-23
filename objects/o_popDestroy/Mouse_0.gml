// user decided to hit back on pop up, so need to destroy popup

instance_destroy(q);
instance_destroy(e);
instance_destroy(m);
instance_destroy(pop);
caller.created = 0;

// need to turn pause off
	if (room == SCut || room == QCut) {
		o_cutManager.pause = 0;
	}
	if (room == SSwipe || room == QSwipe) {
		o_swipeManager.pause = 0;
	}
	if (room == SStir || room == QStir) {
		o_stirManager.pause = 0;
	}

instance_destroy(); // destroys itself
