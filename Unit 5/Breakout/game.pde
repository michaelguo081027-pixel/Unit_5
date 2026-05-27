void game(){
  background(0, 0, 128);
  textSize(50);
  fill(255, 165, 0);
  message();
  t=t-0.01;
  strokeWeight(5);
  textSize(40);
  fill(255);
  text(remain+" to go!", 7*width/8, 40);
  text("Lives: "+lives, width/8, 40);
  //paddle
  circle(i, height, 125);
  if(i<=75)i=75;
  if(i>=725)i=725;
  if(t<0){
    if(akey==true||leftkey==true)i=i-5;
    if(dkey==true||rightkey==true)i=i+5;
  }
  //ball
  circle(x, y, 30);
  if(t<0){
  x=x+vx;
  y=y+vy;
  }
  if(y<15)vy=vy*-1;
  if(x<15||x>width-15)vx=vx*-1;
  if(dist(i,height,x,y)<=125/2+30/2){
    vx=(x-i)/10;
    vy=(y-height)/10;
  }
  if(y>height){
    lives=lives-1;
    reset();
    if(lives==0)mode=end;
  }
  int j=0;
  while (j<c){
    if(stay[j]==true){
      manageBrick(j);
    }
    j++;
  }
}

void gameClicks(){
  mode=pause;

}

void manageBrick(int j){
  if(0<=j&&j<6){
    red=255;
    green=blue=0;
  }else if(j>=6&&j<12){
    red=green=255;
    blue=0;
  }else if(j>=12&&j<18){
    red=0;
    green=255;
  }else if(j>=18&&j<24){
    red=0;
    green=blue=255;
  }
  fill(red, green, blue);
  circle(h[j], v[j], 75);
  if(dist(h[j],v[j],x,y)<=75/2+30/2){
  vx=(x-h[j])/10;
  vy=(y-v[j])/10;
  stay[j]=false;
  remain=remain-1;
  if(remain==0)mode=end;
  }
}

void reset(){
  x=i;
  y=3*width/4;
  t=1.5;
  vy=random(1, 3);
}

void message(){
  if(t>=0)text("Get ready",width/2, 550);
  if(0>t&&t>=-1)text("GO!",width/2, 550);
}
  
