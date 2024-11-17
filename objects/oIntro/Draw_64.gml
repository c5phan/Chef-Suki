draw_sprite_ext(sPixel,0,0,640,1280,100,0,c_black,1); // draw the bot border

draw_set_color(c_white); // set text to white
draw_set_halign(fa_center); // center aligned text
draw_set_valign(fa_top);
draw_set_font(Cutscene_txt);
draw_text(640,680,print);

if (holdspace >= 0) {
	draw_set_alpha(Wave(0.2,0.8,1,0));
	draw_text(1280,680,"Hold space\nto skip");
	draw_set_alpha(1);
}

draw_sprite_ext(sPixel,0,0,0,1280,720,0,c_black,a); // fade