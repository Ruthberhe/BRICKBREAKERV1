//brick breaker
//brick variables
int[] x;
int[] y;
int brickd;
int n;
boolean [] alive;

//frame work
int mode;
final int INTRO =0;
final int GAME =1 ;
final int PAUSE =2 ;
final int GAMEOVER = 3;

//entity varible
float px, py, pd;
float bx, by, bd;
float vx, vy;

//keyboard varibales
boolean leftkey, rightkey;

//tracking
int tempx, tempy;

//scoring
int score, lives;

//color variables
color   white     =#FAFAFA;
color   Purple    =#AD6769;
color   Burgundi  =#4C0F0C;
color   Navy      =#003566;
color   Blue      =#ABC4FF;
color   Sky       =#C1D3FE;
color   Tnavy     =#66003566;

void setup() {
  size(800, 600);
  mode = INTRO;

  //initialize paddle
  px=width/2;
  py=height;

  pd=100;
  //initialize ball
  bx=width/2;
  by=height-200;
  bd=10;

  //move ball
  vx=random(-5, 5);
  vy=random(-5, 5);

  //initialize
  leftkey=rightkey=false;
  n=65;
  brickd=40;
  x= new int[n];
  y= new int[n];
  alive=new boolean[n];
  tempx= 100;
  tempy=100;


  int i=0;
  while (i<n) {
    x[i]= tempx;
    y[i]= tempy;
    alive[i] =true;
    i=i+1;
    tempx=tempx+50;
    if (tempx==width-50) {
      tempx=100;
      tempy=tempy+50;
    }
  }

  //initialize scoring and lives
  score=0;
  lives=3;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode ==PAUSE) {
    pause();
  } else if (mode ==GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
