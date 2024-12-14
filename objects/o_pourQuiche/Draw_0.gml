draw_sprite_ext(FilledPastry,0,0,0,1,1,0,-1,pourOpacity);
draw_self();

draw_set_font(Cutscene_txt);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(80,79,("Time Left: " + string(ceil(level_timer/60))));

// progress bar
draw_rectangle_colour(575, 30, 775, 50, c_white, c_white, c_white, c_white, 0);
draw_rectangle_colour(578, 32, 772, 48, c_ltgray, c_ltgray, c_ltgray, c_ltgray, 0);
draw_rectangle_colour(581, 34, 581+188*(min(pourOpacity,1)), 46, c_white, c_white, c_white, c_white, 0);
