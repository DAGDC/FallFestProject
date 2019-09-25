/// @description Define Beggining Variables
lives = 3;
score = 0;
globalvar highscore;
globalvar name;
name = "N/A"
globalvar highscore;
highscore = 0;
ini_open("savedata.ini");
if file_exists("savedata.ini")
	{
		highscore = ini_read_real("Highscore", "Value", 0);
		name = ini_read_string("Highscore", "Name", "N/A");
		
	}
else {
	
	ini_write_real("Highscore", "Value", 0);	
	ini_write_string("Highscore", "Name", "N/A");	
	
}
ini_close();
audio_play_sound(sound_background, 0, true);