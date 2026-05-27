void intro(){
  background(255, 255, 0);
  i=x=width/2;
  y=3*width/4;
  lives=3;
  remain=24;
  vx=0;
  vy=random(1, 3);
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
}

void introClicks(){
  mode=game;
}
