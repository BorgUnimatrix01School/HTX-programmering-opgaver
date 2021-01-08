// initiering af variablen f
Firkant f;
char drawMode = 'f';

void setup() {
  size (600, 400);
}

void draw() {
  // initiering af objektet f
  f = new Firkant();
  // tegner firkanten på canvas
  switch(drawMode){
    case 'f':
      f.drawFirkant();
      drawMode = 'c';
      break;
    case 'c':
      f.drawCirkel();
      drawMode = 'f';
      break;
  }
}
