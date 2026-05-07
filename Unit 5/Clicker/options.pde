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
  line(350, 450, 550, 450);
  fill(255/2);
  circle(t, 50, 30);
  strokeWeight(5);
  
}

void optionClicks(){
  if(mouseX>300&&mouseX<500&&mouseY>600&&mouseY<700){
    mode=intro;
  }
}

void slider() {
  if (mouseX > 350 && mouseX <550 && mouseY > 435 && mouseY < 465){
    t = mouseX;
  }
  
  d = map(t, 350, 550, 0, 10);
}
