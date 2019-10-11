/// @description Draw lives and score_formatted in top corner
score_formatted = num_seperator(score, ",", 3);
highscore_formatted = num_seperator(highscore, ",", 3);
highscore2_formatted = num_seperator(highscore2, ",", 3);
highscore3_formatted = num_seperator(highscore3, ",", 3);
draw_sprite(spr_lives, lives, 5, 5);
draw_set_font(fnt_score);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_text(51*3 + 10, 10, "Score: " + string(score_formatted));
//draw_text(51*3 + 140 + 15*string_length(score_formatted), 10, "Highscore: " + string(highscore_formatted));
//draw_text(51*3 + 340 + 15*string_length(score_formatted) + 15*string_length(highscore_formatted), 10, "Highscore Name: " + string(name));

draw_set_halign(fa_right);
draw_set_color(c_yellow);
draw_set_alpha(.5);
height = 30
draw_text(obj_highscores.x, obj_highscores.y, "1st Place:" + name);
draw_text(obj_highscores.x, obj_highscores.y + height, string(highscore_formatted));
draw_text(obj_highscores.x, obj_highscores.y + 2 * height, "2nd Place:" + name2);
draw_text(obj_highscores.x, obj_highscores.y + 3 * height, string(highscore2_formatted));
draw_text(obj_highscores.x, obj_highscores.y + 4 * height, "3rd Place:" + name3);
draw_text(obj_highscores.x, obj_highscores.y + 5 * height, string(highscore3_formatted));
draw_set_alpha(1);
draw_set_halign(fa_left);

if (score > highscore) {
	draw_set_alpha(1);
	//draw_set_color(make_color_rgb(175, 20, 0));
	draw_set_color(c_orange);
	//draw_set_color(make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255)));
	draw_set_halign(fa_center);
	draw_set_font(fnt_highscore);
	draw_text(display_get_gui_width()/2, 100, "New Highscore!!!");
}