int mode;
final int intro=1;
final int game=2;
final int pause=3;
final int end=4;
float x, y, d;
float vx, vy;
int score, lives;

void setup(){
  size(800, 800);
  mode=intro;
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
  }else{
    println("ERROR: INVALID ENTRY");
  }
}
