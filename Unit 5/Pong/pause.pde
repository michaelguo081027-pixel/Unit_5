void pause(){
  strokeWeight(5);
  stroke(0);
  fill(255);
  circle(750, 500, 100);
  triangle(735, 475, 735, 525, 765, 500);
  fill(0);
  text("PAUSED", width/2, height/2);
}

void pauseClicks(){
  if(dist(mouseX, mouseY, 750, 500)<50)mode=game;
}
