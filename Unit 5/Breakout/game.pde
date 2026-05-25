void game(){
  background(0, 0, 128);
  strokeWeight(5);
  fill(255);
  circle(i, height, 125);
  if(i<=75)i=75;
  if(i>=725)i=725;
  if(akey==true||leftkey==true)i=i-5;
  if(dkey==true||rightkey==true)i=i+5;
  circle(x, y, 30);
  x=x+vx;
  y=y+vy;
  if(y<15)vy=vy*-1;
  if(x<15||x>width-15)vx=vx*-1;
  if(dist(i,height,x,y)<=125/2+30/2){
    vx=(x-i)/10;
    vy=(y-height)/10;
  }
  int j=0;
  while (j<15){
    circle(h[j], v[j], 75);
    if(dist(h[j],v[j],x,y)<=75/2+30/2){
    vx=(x-h[j])/10;
    vy=(y-v[j])/10;
    }
    j=j+1;
  }
  
}

void gameClicks(){
  
}
