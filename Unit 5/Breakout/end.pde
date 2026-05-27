void end(){
  if(lives==0){
    background(255, 0, 0);
    fill(255);
    textSize(100);
    text("MISSION FAILED", width/2, 3*height/8);
  }
  if(remain==0){
    background(0, 255, 0);
    fill(0);
    textSize(75);
    text("MISSION COMPLETED", width/2, 3*height/8);
  }
}

void endClicks(){
  mode=intro;
}
