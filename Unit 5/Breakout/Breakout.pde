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
int red, green;

void setup(){
  size(800, 800);
  textAlign(CENTER, CENTER);
  mode=intro;
  i=x=width/2;
  y=3*width/4;
  vx=0;
  c=15;
  red=255;
  green=0;
  vy=random(1, 3);
  h=new int[c];
  v=new int[c];
  stay=new boolean[c];
  tv=100;
  th=100;
  int j=0;
  while (j<c){
    h[j]= th;
    v[j]= tv;
    stay[j]=true;
    th=th+150;
    if(th>700){
      th=100;
      tv=tv+150;
    }
    j=j+1;
  }
}

void draw(){
  if(mode==intro)intro();
  else if(mode==game)game();
  else if(mode==pause)pause();
  else if(mode==end)end();
  else println("ERROR: INVALID ENTRY");
}
