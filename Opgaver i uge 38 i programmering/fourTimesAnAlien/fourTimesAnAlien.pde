void setup(){
  size(600,600);
  noLoop();
}
// Variables
int sizeX = 600;
int sizeY = 600;

int hX = sizeX/2;
int hY = sizeY/2;

// Declaration of functions
// Frame function
void frameFunction(int x, int y){
  rect(10+x,10+y,280,280);
}
// Eyes function
void drawEyes(int x, int y){
  fill(0,0,0);
  ellipse(125+x,75+y,25,50);
  ellipse(175+x,75+y,25,50);
}
// Head with eyes function
void drawHeadWithEyes(int x, int y){
  fill(255,255,255);
  circle(150+x,75+y,100);
  drawEyes(x,y);
}
// Body function
void drawBody(int x, int y){
  fill(0,0,0);
  rect(125+x,120+y,50,100);
}
// Legs function
void drawLegs(int x, int y){
  strokeWeight(5);
  line(125+x,220+y,110+x,250+y);
  line(175+x,220+y,195+x,250+y);
  strokeWeight(1);
}
void drawName(int x, int y, String name){
  textSize(32);
  text(name,120+x,270+y);
}

void drawAlien(int x, int y, String name){
  drawHeadWithEyes(x,y);
  drawBody(x,y);
  drawLegs(x,y);
  drawName(x,y,name);
}

// Drawing
void draw(){
  // Division of screen into four parts
  line(300,0,300,600);
  line(0,300,600,300);
  
  // Frame function
  frameFunction(0,0);
  frameFunction(hX,0);
  frameFunction(0,hY);
  frameFunction(hX,hY);
  
  //Alien left up
  drawAlien(0,0,"Alie");
  
  //Alien right up
  drawAlien(hX,0,"Jens");
  
  //Alien left down
  drawAlien(0,hY,"Julius");
  
  //Alien right down
  drawAlien(hX,hY,"Bruh");
}
