/// @description Toggle betweeh bow and sword
playerState = -playerState;
if (playerState) {
	
	sprite_index = spr_player_sword;	
	
}
else {
	
	sprite_index = spr_player;	
	
}