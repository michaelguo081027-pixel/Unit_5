void game(){
  background(0, 128, 0);
  stroke(0);
  fill(255, 0, 0);
  circle(lx, ly, ld);
  if(wkey==true)ly=ly-5;
  if(skey==true)ly=ly+5;
  fill(0);
  circle(rx, ry, rd);
  if(upkey==true)ry=ry-5;
  if(downkey==true)ry=ry+5;
  fill(255, 165, 0);
  circle(bx, by, bd);
}

void gameClicks(){
  
}
