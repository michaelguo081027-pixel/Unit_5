void intro(){
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if(f==number)f=0;
  i=x=width/2;
  y=3*width/4;
  lives=3;
  remain=24;
  vx=0;
  vy=random(3, 5);
  r1=g2=b1=b2=255;
  t=1.5;
  c=24;
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
    th=th+120;
    if(th>700){
      th=100;
      tv=tv+120;
    }
    j=j+1;
  }
  fill(255);
  textSize(75);
  text("BREAKOUT: HIT 'N' GO!", width/2, 3*height/8);
  textSize(40);
  text("Click to Play", width/2, 3*width/4);
}

void introClicks(){
  mode=game;
}
