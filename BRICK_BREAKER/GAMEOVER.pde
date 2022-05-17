void gameover() {
 //reset();
  background(255);
if(lives<1){
  textSize(60);
  fill(Purple);
  text("YOU LOST :(", width/3, height/2);
}
if(score==130){
  fill(Purple);
  textSize(60);
  text("YOU WON! :)", width/3, height/2);
}

//restart
tactile(300, 450, 200, 100);
  fill(0);
  rect(300, 450, 200, 100);
  textSize(40);
  fill(255);
  text("RESTART", 320, 520);
}

void gameoverClicks() {
  
  if(mouseX>300 && mouseX<500 && mouseY>450 && mouseY<550){
  mode=INTRO;
  reset();
  }
}
