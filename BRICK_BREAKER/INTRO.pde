void intro() {
background(Sky);
tactile(300, 250, 200, 100);
fill(Purple);
rect(300, 250, 200, 100);
fill(Sky);
textSize(60);
text("BEGIN", 320, 320);
}

void introClicks() {
  if(mouseX>300 && mouseX<500 && mouseY>250 && mouseY<350){
    mode=GAME;
  }
}

void tactile(int x, int y, int w, int h){
  if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
    stroke(0);
  }else{
    stroke(255);
  }
}
  
