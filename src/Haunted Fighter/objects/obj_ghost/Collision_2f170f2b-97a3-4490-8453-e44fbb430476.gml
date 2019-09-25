/// @description Detect collision with arrow
//instance_destroy(other); Should I include this?
	
if (other != arrow) {
	
	other.hits += 1;
	arrow = other;
	ghostLives -= 1;
	
}
if (ghostLives <= 0) {
	
	instance_destroy();
	other.kills += 1;
	
}