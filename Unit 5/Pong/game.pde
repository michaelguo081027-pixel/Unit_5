void game(){
  background(0, 128, 0);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  textSize(50);
  fill(255, 0, 0);
  text(ls, width/4, 100);
  fill(0);
  text(rs, 3*width/4, 100);
  textSize(75);
  fill(255, 0, 255);
  message();
  t=t-0.01;
  stroke(0);
  fill(255);
  circle(750, 500, 100);
  strokeWeight(7);
  line(735, 475, 735, 525);
  line(765, 475, 765, 525);
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
  //move
  if(t<0){
    bx=bx+vx;
    by=by+vy;
  }
  //bounce
  if(dist(lx,ly,bx,by)<=ld/2+bd/2){
    vx=(bx-lx)/10;
    vy=(by-ly)/10;
  }
  if(dist(rx,ry,bx,by)<=rd/2+bd/2){
    vx=(bx-rx)/10;
    vy=(by-ry)/10;
  }
  if(by<bd/2||by>height-bd/2)vy=vy*-1;
  if(bx<0){
    rs++;
    reset();
  }
  if(bx>width){
    ls++;
    reset();
  }
}

void gameClicks(){
  if(dist(mouseX, mouseY, 750, 500)<50)mode=pause;
}

void message(){
  if(t>=1)text("ready",width/2, 100);
  if(1>t&&t>=0)text("set",width/2, 100);
  if(0>t&&t>=-1)text("GO!",width/2, 100);
}

void reset(){
  bx=width/2;
    by=height/2;
    t=2;
    vx=random(-5, 5);
    vy=random(-5, 5);
    ly=height/2;
    ry=height/2;
}
