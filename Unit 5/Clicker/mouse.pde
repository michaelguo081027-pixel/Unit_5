void mouseReleased(){
  if(mode==intro){
    introClicks();
  }else if(mode==game){
    gameClicks();
  }else if(mode==pause){
    pauseClicks();
  }else if(mode==end){
    endClicks();
  }else if(mode==options){
    optionClicks();
  }
  if(mode==options && difficulty!=insane)slider();
}

void mouseDragged(){
  if(mode==options && difficulty!=insane)slider();
}
