void end(){
  //return
  strokeWeight(7);
  stroke(0);
  fill(255);
  circle(750, 500, 100);
  line(725, 500, 775, 500);
  line(775, 500, 755, 475);
  line(775, 500, 755, 525);
  //message
  if(ls==3){
    stroke(0, 128, 0);
    fill(0, 128, 0);
    rect(200, 75, 100, 100);
    textSize(150);
    fill(255, 0, 0);
    text("1P WINS", width/2, height/2);
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
      text("2P WINS", width/2, height/2);
      textSize(50);
      text("3", 3*width/4, 100);
    }else{
      stroke(0, 128, 0);
      fill(0, 128, 0);
      rect(600, 75, 100, 100);
      textSize(150);
      fill(0, 0, 255);
      text("CP WINS", width/2, height/2);
      textSize(50);
      text("3", 3*width/4, 100);
    }
  }
}

void endClicks(){
  if(dist(mouseX, mouseY, 750, 500)<50)mode=intro;
}
