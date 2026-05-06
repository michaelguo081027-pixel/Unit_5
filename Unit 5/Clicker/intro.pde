void intro(){
  background(255, 255, 0);
  strokeWeight(5);
  select(300, 500, 200, 100);
  rect(300, 500, 200, 100);
  textSize(100);
  fill(0);
  text("CLICKER GAME", 400, 300);
  textSize(40);
  text("START", 400, 550);
  x=width/2;
  y=height/2;
  d=100;
  vx=random(-5, 5);
  vy=random(-5, 5);
  score=0;
  lives=3;
}

void introClicks(){
  if(mouseX>300&&mouseX<500&&mouseY>500&&mouseY<600){
    mode=game;
  }
}

void select(int x, int y, int w, int h){
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    stroke(255, 0, 0);
    fill(255, 165, 0);
  } else {
    stroke(0);
    fill(255);
  }
}
