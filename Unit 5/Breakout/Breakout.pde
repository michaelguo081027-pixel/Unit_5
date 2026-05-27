int mode;
final int intro=1;
final int game=2;
final int pause=3;
final int end=4;
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

void setup(){
  size(800, 800);
  textAlign(CENTER, CENTER);
  mode=intro;
  red=255;
  green=0;
}

void draw(){
  if(mode==intro)intro();
  else if(mode==game)game();
  else if(mode==pause)pause();
  else if(mode==end)end();
  else println("ERROR: INVALID ENTRY");
}
