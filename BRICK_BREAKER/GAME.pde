void game() {
  
  background(0);
  //pause button
 tactile(0, 0, 50, 50);
  stroke(0);
  fill(255);
  square(0, 0, 50);
  rect(10, 10, 10, 30);
  rect(30, 10, 10, 30);

  //paddle
  fill(255);
  circle(px, py, pd);
  //ball
  circle(bx, by, bd);

  //move ball
  bx=bx+vx;
  by=by+vy;
  //bounce off wall
  if (bx<=bd/2 || bx>=width -bd/2) {
    vx=vx*-1;
  }
  //if (by<=bd/2 || by>=height -bd/2) {
    //vy=vy*-1;
  //}
  if(by<=0){
    vy=vy*-1;
  }
  //lives and score
  if(by>height+50){
    by=height-100;
    bx=width/2;
    lives=lives-1;
    if(lives<1){
      mode=GAMEOVER;
    }
  }
  
  if(score==130){
    mode=GAMEOVER;
  }

  

  //bounce off paddle
  if (dist(bx, by, px, py)<=pd/2 +bd/2) {
    vx=(bx-px)/10;
    vy=(by-py)/10;
  }


  //restrict
  if (px<50) {
    px=50;
  }
  if (px>width-50) {
    px=width-50;
  }
  //move paddle
  if (leftkey==true) px=px-5;
  if (rightkey==true) px=px+5;


  //bounce of bricks
  int i=0;
  while (i<n) {

    if(alive[i]==true){
    managebrick(i);
    }
    i++;
  }


//score board
textSize(30);
text("Score:" + score, width/10, 50);
text("Lives:" +lives, width-120, 50);
}


void gameClicks() {
    if (mouseX >0& mouseX <50 && mouseY>0 && mouseY<50) {
    mode=PAUSE;
  }
}

void managebrick(int i) {
  //reset();
  circle(x[i], y[i], brickd);
  if (y[i]==100) fill(Purple);
  if (y[i]==150) fill(Burgundi);
  if (y[i]==200) fill(Navy);
  if (y[i]==250) fill(Blue);
  if (y[i]==300) fill(Sky);
  if (dist(bx, by, x[i], y[i])<=brickd/2 +bd/2) {
    vx=(bx-x[i])/10;
    vy=(by-y[i])/10;
    alive[i]=false;
    score=score+2;
    
  }
  
}
