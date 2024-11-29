if (room == Cookbook_P1 || room == Cookbook_P2 || room == Cookbook_P3) {
	draw_self();
	draw_set_font(Cutscene_txt);
	draw_set_color(c_black);
	draw_text(x+70,y+3, ("Stars: " + string(stars)));
}
