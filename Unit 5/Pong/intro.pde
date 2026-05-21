void intro(){
  background(255, 255, 0);
  strokeWeight(5);
  //initialization
  ls=0;
  rs=0;
  vx=random(7, 2);
  vy=random(7, 2);
  //button
  select(100, 400, 300, 100);
  rect(100, 400, 300, 100);
  select(500, 400, 300, 100);
  rect(500, 400, 300, 100);
  textSize(100);
  fill(0);
  text("PONG: CLASSIC", 450, 200);
  textSize(40);
  text("Single Player", 250, 450);
  text("Local Multiplayer", 650, 450);
  textSize(25);
  text("1P: W-up, S-down", 250, 375);
  text("2P: UpArrow-up, DownArrow-down", 650, 375);
}

void introClicks(){
  if(mouseX>100&&mouseX<400&&mouseY>400&&mouseY<500){
    mode=game;
    AI=true;
  }
  if(mouseX>500&&mouseX<800&&mouseY>400&&mouseY<500){
    mode=game;
    AI=false;
  }
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
