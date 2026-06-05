void end(){
  //message
  if(ls==3){
    stroke(0, 128, 0);
    fill(0, 128, 0);
    rect(200, 75, 100, 100);
    textSize(150);
    fill(255, 0, 0);
    text("1P WINS", width/2, 3*height/8);
    textSize(50);
    text("3", width/4, 100);
  }
  if(rs==3){
    if(AI==false){
      stroke(0, 128, 0);
      fill(0, 128, 0);
      rect(600, 75, 100, 100);
      textSize(150);
      fill(0);
      text("2P WINS", width/2, 3*height/8);
      textSize(50);
      text("3", 3*width/4, 100);
    }else{
      stroke(0, 128, 0);
      fill(0, 128, 0);
      rect(600, 75, 100, 100);
      textSize(150);
      fill(0, 0, 255);
      text("CP WINS", width/2, 3*height/8);
      textSize(50);
      text("3", 3*width/4, 100);
    }
  }
  fill(0, 255, 255);
  textSize(75);
  text("Click to Main Menu", width/2, 3*height/4);
}

void endClicks(){
  mode=intro;
}
