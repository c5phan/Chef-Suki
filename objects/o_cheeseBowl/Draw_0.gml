draw_set_font(Cutscene_txt);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(80,79,("Time Left: " + string(ceil(level_timer/60))));