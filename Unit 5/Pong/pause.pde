void pause(){
  fill(0);
  textSize(150)
  text("PAUSED", width/2, 3*height/8);
  textSize(75);
  text("Click to Continue", width/2, 5*height/8);
}

void pauseClicks(){
  if(dist(mouseX, mouseY, 750, 500)<50)mode=game;
}
