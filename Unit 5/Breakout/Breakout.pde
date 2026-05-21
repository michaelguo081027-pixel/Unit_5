int mode;
final int intro=1;
final int game=2;
final int pause=3;
final int end=4;
float i, x, y;
float vx, vy;
boolean akey, dkey, leftkey, rightkey;

void setup(){
  size(800, 800);
  mode=intro;
  i=x=width/2;
  y=3*width/4;
  vx=0;
  vy=random(1, 3);
}

void draw(){
  if(mode==intro)intro();
  else if(mode==game)game();
  else if(mode==pause)pause();
  else if(mode==end)end();
  else println("ERROR: INVALID ENTRY");
}
