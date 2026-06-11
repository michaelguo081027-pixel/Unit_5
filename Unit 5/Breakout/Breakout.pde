/*
Michael Guo
2-1
2026/5/28
Breakout
*/

//general variables
int mode;
final int intro=1;
final int game=2;
final int pause=3;
final int end=4;
//specific variables
float i, x, y;
float vx, vy;
boolean akey, dkey, leftkey, rightkey;
int[] v;
int[] h;
boolean[] stay;
int tv, th;
int c;
int red, green, blue;
int lives, remain;
float t;
PImage[] gif;
int number;
int f;
float r1, b1, g2, b2;

void setup(){
  size(800, 800);
  textAlign(CENTER, CENTER);
  mode=intro;
  red=255;
  green=0;
  blue=0;
  //gif
  number=60;
  gif=new PImage[60];
  int k=0;
  while(k<number){
    gif[k]=loadImage("frame_"+k+"_delay-0.03s.gif");
    k=k+1;
  }
}

void draw(){
  if(mode==intro)intro();
  else if(mode==game)game();
  else if(mode==pause)pause();
  else if(mode==end)end();
  else println("ERROR: INVALID ENTRY");
}
