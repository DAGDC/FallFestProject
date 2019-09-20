/// @description Draw lives and score in top corner
draw_sprite(spr_lives, lives, 5, 5);
draw_set_font(fnt_score);
draw_text(51*lives + 10, 20, "Score: " + string(score));
draw_text(51*lives + 140 + 10*string_length(score), 20, "Highscore: " + string(highscore));
draw_text(51*lives + 355 + 10*string_length(highscore), 20, "Highscore Name: " + string(name));