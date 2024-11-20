if (place_meeting(x,y,oPlayer_Side)) {
	o_quicheManager.end_level = 1;
	starCount.stars += 3; // depends on how well they do
	room_goto(Cookbook_P2);
} 