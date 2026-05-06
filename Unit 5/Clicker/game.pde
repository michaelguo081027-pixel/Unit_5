void game(){
  background(0, 255, 0);
  //pause
  stroke(0);
  fill(255);
  circle(650, 100, 100);
  strokeWeight(7);
  line(635, 75, 635, 125);
  line(665, 75, 665, 125);
  //output
  fill(0);
  text("Score: "+score, width/8, height/10);
  text("Lives: "+lives, width/8, height/10+35);
  //target
  strokeWeight(5);
  stroke(0);
  fill(255);
  circle(x, y, d);
  
  //move
  x=x+vx;
  y=y+vy;
  //bounce
  if(x<d/2||x>width-d/2){
    vx=vx*-1;
  }
  if(y<d/2||y>height-d/2){
    vy=vy*-1;
  }
  
}

void gameClicks(){
  if(dist(mouseX, mouseY, x, y)<d/2){
    score=score+1;
  }else if(dist(mouseX, mouseY, 650, 100)<50){
    mode=pause;
  }else{
    lives=lives-1;
    if(lives==0) mode=end;
  }
}
