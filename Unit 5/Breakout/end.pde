void end(){
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if(f==number)f=0;
  if(lives==0){
    fill(255, 0, 0);
    textSize(100);
    text("MISSION FAILED", width/2, 3*height/8);
  }
  if(remain==0){
    fill(0, 255, 0);
    textSize(75);
    text("MISSION COMPLETED", width/2, 3*height/8);
  }
  fill(255);
  textSize(40);
  text("Click to Main Menu", width/2, 3*width/4);
}

void endClicks(){
  mode=intro;
}
