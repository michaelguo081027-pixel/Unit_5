void pause(){
  fill(255);
  textSize(75);
  text("PAUSED", width/2, 3*height/4);
  textSize(25);
  text("Click to Continue", width/2, 5*height/6);
}

void pauseClicks(){
  mode=game;
}
