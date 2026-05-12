/*
Michael Guo
2-1
2026/5/11
Clicker Game
*/

//general variables
int mode;
int difficulty;
//entries
final int intro=1;
final int game=2;
final int pause=3;
final int end=4;
final int options=5;
final int classic=6;
final int bonus=7;
final int insane=8;
//specific variables
float x, y, d, t;
float vx, vy;
int highscore, score, lives;
float blue, green;

void setup(){
  size(800, 800);
  mode=intro;
  difficulty=classic;
  textAlign(CENTER, CENTER);
  x=width/2;
  y=height/2;
  d=110;
  vx=random(-5, 5);
  vy=random(-5, 5);
  score=0;
}

void draw(){
  if(mode==intro)intro();
  else if(mode==game)game();
  else if(mode==pause)pause();
  else if(mode==end)end();
  else if(mode==options)options();
  else println("ERROR: INVALID ENTRY");
}
