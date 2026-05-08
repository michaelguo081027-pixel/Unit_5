int mode;
int difficulty;
final int intro=1;
final int game=2;
final int pause=3;
final int end=4;
final int options=5;
final int classic=6;
final int bonus=7;
final int insane=8;
float x, y, d, t;
float vx, vy;
int score, lives;
float blue, green;

void setup(){
  size(800, 800);
  mode=intro;
  difficulty=bonus;
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);
  x=width/2;
  y=height/2;
  d=100;
  vx=random(-5, 5);
  vy=random(-5, 5);
  //score=0;
  //lives=3;
}

void draw(){
  if(mode==intro){
    intro();
  }else if(mode==game){
    game();
  }else if(mode==pause){
    pause();
  }else if(mode==end){
    end();
  }else if(mode==options){
    options();
  }else{
    println("ERROR: INVALID ENTRY");
  }
}
