
Score = argument0;
handler = argument1;

ini_open("highscores.ini");
if(ini_read_real("Scores", "HighScore", 0) < Score){
    ini_write_real("Scores", "HighScore", Score);
    handler.HighScore = Score;
}
ini_close()
