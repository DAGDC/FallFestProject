/// @description Draw lives and score in top corner
draw_sprite(spr_lives, lives, 5, 5);
draw_set_font(fnt_score);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(51*lives + 10, 20, "Score: " + string(score));
draw_text(51*lives + 140 + 10*string_length(score), 20, "Highscore: " + string(highscore));
draw_text(51*lives + 365 + 10*string_length(highscore), 20, "Highscore Name: " + string(name));
if (score > highscore) {
	
	draw_set_color(make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255)));
	draw_set_halign(fa_center);
	draw_set_font(fnt_highscore);
	draw_text(display_get_gui_width()/2, 100, "New Highscore!!!");
	
}