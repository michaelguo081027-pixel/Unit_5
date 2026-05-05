int mode;
final int intro=1;
final int game=2;
final int pause=3;
final int end=4;

void setup(){
  size(800, 800);
  mode=intro;
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);
}

void draw(){
  if(mode==intro){
    intro();
  }else if(mode==game){
    game();
  }else if(mode==pause){
    pause();
  }else if(mode==end){
    end();
  }else{
    println("ERROR: INVALID ENTRY");
  }
}
