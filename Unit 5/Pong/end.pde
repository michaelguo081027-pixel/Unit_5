void end(){
  strokeWeight(7);
  stroke(0);
  fill(255);
  circle(750, 500, 100);
  line(725, 500, 775, 500);
  line(775, 500, 755, 475);
  line(775, 500, 755, 525);
  if(ls==3){
    textSize(150);
    fill(255, 0, 0);
    text("1P WINS", width/2, height/2);
  }
  if(rs==3){
    if(AI==false){
      textSize(150);
      fill(0);
      text("2P WINS", width/2, height/2);
    }else{
      textSize(150);
      fill(0, 0, 255);
      text("CP WINS", width/2, height/2);
    }
  }
}

void endClicks(){
  if(dist(mouseX, mouseY, 750, 500)<50)mode=intro;
}
