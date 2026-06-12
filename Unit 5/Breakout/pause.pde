void pause(){
  fill(255);
  textSize(75);
  text("PAUSED", width/2, 5*height/6);
  fill(0, 0, 128);
  stroke(0, 0, 128);
  rect(width/4, 0, width/2, height/16);
  fill(255);
  textSize(35);
  text("Click to Continue", width/2, height/20);
  stroke(0);
}

void pauseClicks(){
  mode=game;
}
