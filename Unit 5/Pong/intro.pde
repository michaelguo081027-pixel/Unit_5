void intro(){
  background(255, 255, 0);
  strokeWeight(5);
  //button
  select(350, 400, 200, 100);
  rect(350, 400, 200, 100);
  textSize(100);
  fill(0);
  text("PONG", 450, 200);
  textSize(40);
  text("START", 450, 450);
}

void introClicks(){
  if(mouseX>350&&mouseX<550&&mouseY>400&&mouseY<500)mode=game;
}

void select(int x, int y, int w, int h){
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    stroke(255, 0, 255);
    fill(0, 255, 255);
  } else {
    stroke(0);
    fill(255);
  }
}
