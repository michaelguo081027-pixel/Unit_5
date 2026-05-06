void end(){
  background(255, 0, 0);
  textSize(100);
  text("GAME OVER", width/2, height/3);
  textSize(30);
  text("YOUR SCORE: "+score, width/2, height*5/8);
}

void endClicks(){
  mode=intro;
}
