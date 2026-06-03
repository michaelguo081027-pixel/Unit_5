void game(){
  //board
  background(0, 128, 0);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  stroke(0, 128, 0);
  fill(0, 128, 0);
  rect(425, 65, 50, 70);
  textSize(75);
  fill(0, 255, 0);
  text("3", width/2, 100);
  textSize(50);
  fill(255, 0, 0);
  text(ls, width/4, 100);
  if(AI==false)fill(0);
  else fill(0, 0, 255);
  text(rs, 3*width/4, 100);
  textSize(75);
  fill(255, 0, 255);
  message();
  t=t-0.01;
  //paddle
  strokeWeight(5);
  stroke(0);
  fill(255, 0, 0);
  circle(lx, ly, ld);
  if(ly<=100)ly=100;
  if(ly>=500)ly=500;
  if(t<0){
    if(wkey==true)ly=ly-5;
    if(skey==true)ly=ly+5;
  }
  if(AI==false)fill(0);
  else fill(0, 0, 255);
  circle(rx, ry, rd);
  if(ry<=100)ry=100;
  if(ry>=500)ry=500;
  if(AI==false){
    if(t<0){
      if(upkey==true)ry=ry-5;
      if(downkey==true)ry=ry+5;
    }
  }else{
    if(by<ry){
      ry=ry-5;
    }
    if(by>ry){
      ry=ry+5;
    }
  }
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
    vx=random(-2, -7);
    vy=random(-5, 5);
  }
  if(bx>width){
    ls++;
    reset();
    vx=random(7, 2);
    vy=random(-5, 5);
  }
  if(ls==3||rs==3)mode=end;
}

void gameClicks(){
  if(dist(mouseX, mouseY, 750, 500)<50)mode=pause;
}

void message(){
  if(t>=2){
    if(vx<0)text("1P turn",width/2, 500);
    else{
      if(AI==false)text("2P turn",width/2, 500);
      else text("CP turn",width/2, 500);
    }
  }
  if(2>t&&t>=1)text("Ready",width/2, 500);
  if(1>t&&t>=0)text("Set",width/2, 500);
  if(0>t&&t>=-1)text("GO!!!",width/2, 500);
}

void reset(){
  bx=width/2;
  by=height/2;
  t=3;
  ly=height/2;
  ry=height/2;
}
