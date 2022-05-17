void mouseReleased() {
  if (mode==INTRO) {
    introClicks();
  } else if (mode==GAME) {
    gameClicks();
  } else if (mode==PAUSE) {
    pauseClicks();
  } else if (mode==GAMEOVER) {
    gameoverClicks();
  } else {
  }
}

void keyPressed() {
  if (keyCode==LEFT) leftkey=true;
  if (keyCode==RIGHT) rightkey=true;
}

void keyReleased() {
  if (keyCode==LEFT) leftkey=false;
  if (keyCode==RIGHT) rightkey=false;
}
