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
  circle(h[0], v[0], 75);
  circle(h[1], v[1], 75);
  circle(h[2], v[2], 75);
  circle(h[3], v[3], 75);
  circle(h[4], v[4], 75);
}

void gameClicks(){
  
}
