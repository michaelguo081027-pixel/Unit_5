/*
Michael Guo
2-1
2026/5/20
Pong
*/

//general variable
int mode;
//entries
final int intro=1;
final int game=2;
final int pause=3;
final int end=4;
//specific variables
float lx,ly,ld,rx,ry,rd;
float bx,by,bd,vx,vy;
int ls,rs;
float t;
boolean wkey, skey, upkey, downkey;
boolean AI;

void setup(){
  size(900, 600);
  mode=intro;
  textAlign(CENTER, CENTER);
  lx=0;
  ly=height/2;
  ld=200;
  rx=width;
  ry=height/2;
  rd=200;
  bx=width/2;
  by=height/2;
  bd=75;
  t=2;
  wkey=skey=upkey=downkey=false;
}

void draw(){
  if(mode==intro)intro();
  else if(mode==game)game();
  else if(mode==pause)pause();
  else if(mode==end)end();
  else println("ERROR: INVALID ENTRY");
}
