void intro(){
  background(255, 255, 0);
  strokeWeight(5);
  //button
  select(100, 500, 200, 100);
  rect(100, 500, 200, 100);
  select(500, 500, 200, 100);
  rect(500, 500, 200, 100);
  textSize(100);
  fill(0);
  text("JUST CLICK!", 400, 300);
  textSize(40);
  text("START", 200, 550);
  text("OPTIONS", 600, 550);
  //initialization
  x=width/2;
  y=height/2;
  t=550;
  vx=random(-5, 5);
  vy=random(-5, 5);
  score=0;
  lives=3;
  blue=255;
  green=255;
}

void introClicks(){
  if(mouseX>100&&mouseX<300&&mouseY>500&&mouseY<600)mode=game;
  else if(mouseX>500&&mouseX<700&&mouseY>500&&mouseY<600)mode=options;
}

void select(int x, int y, int w, int h){
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    stroke(255, 0, 255);
    fill(255, 165, 0);
  } else {
    stroke(0);
    fill(255);
  }
}
