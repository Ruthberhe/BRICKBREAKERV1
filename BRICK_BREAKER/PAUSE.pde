void pause() {
    background(Tnavy);
    //resume button
   tactile(0, 0, 50, 50);
  stroke(0);
  fill(255);
  square(0, 0, 50);
  //rect(10, 10, 10, 30);
  //rect(30, 10, 10, 30);
  triangle(10, 10, 40, 25, 10, 40);
  

  textSize(80);
  fill(Sky);
  text("PAUSED", width/3, height/2);
  
  
  tactile(300, 450, 200, 100);
  fill(0);
  rect(300, 450, 200, 100);
  textSize(40);
  fill(255);
  text("RESTART", 320, 510);
}

void pauseClicks(){
    if (mouseX >0& mouseX <50 && mouseY>0 && mouseY<50) {
    mode=GAME;
    }
      if(mouseX>300 && mouseX<500 && mouseY>450 && mouseY<550){
  mode=INTRO;
  reset();
  
  }
}
