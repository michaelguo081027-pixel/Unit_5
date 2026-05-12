void end() {
  background(255, 0, 0);
  fill(255);
  textSize(100);
  //message
  text("GAME OVER", width/2, height/4);
  textSize(30);
  if (score>=highscore) {
    highscore=score;
    text("NEW HIGHSCORE!!!", width/2, 13*height/32);
    text("HIGHSCORE: "+score, width/2, 15*height/32);
  }else if(score<highscore)text("HIGHSCORE: "+highscore, width/2, 15*height/32);
  text("YOUR SCORE: "+score, width/2, 17*height/32);
  //return
  select(300, 500, 200, 100);
  rect(300, 500, 200, 100);
  textSize(40);
  fill(0);
  text("HOME", 400, 550);
  textSize(40);
}

void endClicks() {
  if(mouseX>300&&mouseX<500&&mouseY>500&&mouseY<600)mode=intro;
}
