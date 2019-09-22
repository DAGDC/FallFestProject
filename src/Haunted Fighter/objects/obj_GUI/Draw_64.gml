/// @description Draw lives and score_formatted in top corner
score_formatted = num_seperator(score, ",", 3);
highscore_formatted = num_seperator(highscore, ",", 3);
draw_sprite(spr_lives, lives, 5, 5);
draw_set_font(fnt_score);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(51*lives + 10, 10, "Score: " + string(score_formatted));
draw_text(51*lives + 140 + 15*string_length(score_formatted), 10, "Highscore: " + string(highscore_formatted));
draw_text(51*lives + 340 + 15*string_length(score_formatted) + 15*string_length(highscore_formatted), 10, "Highscore Name: " + string(name));
if (score > highscore) {
	
	draw_set_color(make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255)));
	draw_set_halign(fa_center);
	draw_set_font(fnt_highscore);
	draw_text(display_get_gui_width()/2, 100, "New Highscore!!!");
	
}