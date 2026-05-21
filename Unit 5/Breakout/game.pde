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
  if(y<15||y>height-15)vy=vy*-1;
  if(x<15||x>height-15)vx=vx*-1;
}

void gameClicks(){
  
}
