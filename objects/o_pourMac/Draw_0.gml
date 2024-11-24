draw_sprite_ext(FilledPastry,0,0,0,1,1,0,-1,pourOpacity);
draw_self();

draw_set_font(Cutscene_txt);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(640,10,("Time Remaining: " + string(ceil(level_timer/60)) + " Seconds"));
