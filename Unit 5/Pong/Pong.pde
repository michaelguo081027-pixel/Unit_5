int mode;
final int intro=1;
final int game=2;
final int pause=3;
final int end=4;
float lx,ly,ld,rx,ry,rd;
float bx,by,bd,vx,vy;
int ls,rs;
float t;
boolean wkey, skey, upkey, downkey;

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
  bd=100;
  ls=0;
  rs=0;
  t=2;
  wkey=skey=upkey=downkey=false;
  vx=random(-5, 5);
  vy=random(-5, 5);
}

void draw(){
  if(mode==intro)intro();
  else if(mode==game)game();
  else if(mode==pause)pause();
  else if(mode==end)end();
  else println("ERROR: INVALID ENTRY");
}
