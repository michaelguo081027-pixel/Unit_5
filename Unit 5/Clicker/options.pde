void options(){
  background(192);
  select(300, 600, 200, 100);
  rect(300, 600, 200, 100);
  select(100, 200, 150, 100);
  rect(100, 200, 150, 100);
  select(325, 200, 150, 100);
  rect(325, 200, 150, 100);
  select(550, 200, 150, 100);
  rect(550, 200, 150, 100);
  fill(0);
  textSize(75);
  text("OPTIONS", 400, 100);
  textSize(40);
  text("DONE", 400, 650);
  text("CLASSIC", 175, 250);
  text("BONUS", 400, 250);
  text("INSANE", 625, 250);
  stroke(0);
  line(250, 550, 550, 550);
  fill(255/2);
  circle(t, 550, 30);
  strokeWeight(5);
  if(difficulty==classic){
    fill(0, 255, 0);
    circle(400, 400, d);
  }else if(difficulty==bonus){
    fill(0, 255, 255);
    circle(400, 400, d);
    fill(255, 255, 0);
    circle(400, 400, 2*d/3);
    fill(255, 0, 0);
    circle(400, 400, d/3);
  }else if(difficulty==insane){
    fill(0);
    text("No size adjustment for this mode,", 400, 350);
    text("Size gets smaller as game continues.", 400, 450);
  }
}

void optionClicks(){
  if(mouseX>300&&mouseX<500&&mouseY>600&&mouseY<700){
    mode=intro;
  }
}

void slider() {
  if (mouseX > 250 && mouseX <550 && mouseY > 535 && mouseY < 565){
    t = mouseX;
  }
  
  d = map(t, 250, 550, 0, 100);
}
