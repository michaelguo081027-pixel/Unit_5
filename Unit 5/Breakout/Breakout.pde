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

void setup(){
  size(800, 800);
  mode=intro;
  i=x=width/2;
  y=3*width/4;
  vx=0;
  vy=random(1, 3);
  h=new int[15];
  v=new int[15];
  h[0]=100;
  v[0]=100;
  
  h[1]=250;
  v[1]=100;
  
  h[2]=400;
  v[2]=100;
  
  h[3]=550;
  v[3]=100;
  
  h[4]=700;
  v[4]=100;
  
  h[5]=100;
  v[5]=250;
  
  h[6]=250;
  v[6]=250;
  
  h[7]=400;
  v[7]=250;
  
  h[8]=550;
  v[8]=250;
  
  h[9]=700;
  v[9]=250;
  
  h[10]=100;
  v[10]=400;
  
  h[11]=250;
  v[11]=400;
  
  h[12]=400;
  v[12]=400;
  
  h[13]=550;
  v[13]=400;
  
  h[14]=700;
  v[14]=400;
}

void draw(){
  if(mode==intro)intro();
  else if(mode==game)game();
  else if(mode==pause)pause();
  else if(mode==end)end();
  else println("ERROR: INVALID ENTRY");
}
