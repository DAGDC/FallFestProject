/// @description Define Beggining Variables
lives = 3;
score = 0;
globalvar highscore, highscore2, highscore3;
globalvar name, name2, name3;
name = "N/A"
highscore = 0;
highscore2 = 0;
highscore3 = 0;
globalvar playerState;
playerState = -1;
ini_open("savedata.ini");
if file_exists("savedata.ini")
	{
		highscore = ini_read_real("Highscore", "Value", 0);
		highscore2 = ini_read_real("Highscore2", "Value", 0);
		highscore3 = ini_read_real("Highscore3", "Value", 0);
		name = ini_read_string("Highscore", "Name", "N/A");
		name2 = ini_read_string("Highscore2", "Name", "N/A");
		name3 = ini_read_string("Highscore3", "Name", "N/A");
		
	}
else {
	
	ini_write_real("Highscore", "Value", 0);	
	ini_write_real("Highscore2", "Value", 0);	
	ini_write_real("Highscore3", "Value", 0);	
	ini_write_string("Highscore", "Name", "N/A");	
	ini_write_string("Highscore2", "Name", "N/A");	
	ini_write_string("Highscore3", "Name", "N/A");	
	
}
ini_close();
audio_play_sound(sound_background, 0, true);