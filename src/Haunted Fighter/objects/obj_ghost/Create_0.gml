/// @description Fade in ghost
image_alpha = 0;
faded = false;
fading = false;

if (random(2) >= 1) {
	
	sprite_index = spr_ghost;
	
} else {
	
	sprite_index = spr_zombie;	
	
}

image_xscale = 0.1;

