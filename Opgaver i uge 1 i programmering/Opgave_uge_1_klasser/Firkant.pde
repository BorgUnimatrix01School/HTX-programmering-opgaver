class Firkant {
  // klassens attributter/ tilstand
  char mode;
  float x, y;
  int[] farve = new int[3];

  //konstroktøren
  Firkant() {
    color(0, 0, 0);
    generate();
  }

  // klassens metoder
  
  // find to tilfældige værdier inden for canvas størrelsen
  void generate() {
    this.x = random(600);
    this.y = random(400);
    
    this.farve[0] = int(random(255));
    this.farve[1] = int(random(255));
    this.farve[2] = int(random(255));
    
    fill(farve[0], farve[1], farve[2]);
  }
  
  // tegn firkant på canvas
  void drawFirkant() {
    square(x, y, 100);
  }
  
  void drawCirkel() {
    circle(x, y, 100);
  }
}
