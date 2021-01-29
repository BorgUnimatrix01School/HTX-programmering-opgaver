// Import
import controlP5.*;

// Variabel deklaration
ControlP5 cp5;
// Alle koordinat-tekstfelter
Textfield[][] Koordinater = new Textfield[3][2];

// Textfield variables
int[] koordinatBoxPosition = {50, 50};
int[] koordinatBoxSize = {80, 50};

// Button
Button executeButton;


void setup(){
  size(800, 800);
  // Skrifttype og størrelse
  PFont font = createFont("arial", 24);
  textFont(font);
  
  // Initiering af CP5
  cp5 = new ControlP5(this);
  
  // Initering af tekstfelter
  int n = 1;
  for(int i = 0; i < 3; i++){
    int y = 0;
    for(int j = 0; j < 2; j++){
      int x = 0;
      
      Koordinater[i][j] = cp5.addTextfield("input", str(n));
      n++;
      
      Koordinater[i][j].setPosition(koordinatBoxPosition[0] + x, koordinatBoxPosition[1] + y)
        .setSize(koordinatBoxSize[0], koordinatBoxSize[1])
        .setFont(font)
        .setColor(color(255))
        .setColorCursor(color(255))
        .setAutoClear(false)
        .setLabel("")
        ;
        
        x += koordinatBoxSize[0];
    }
    y += koordinatBoxSize[1] + 10;
  }
  
  // Initiering af executeButton
  executeButton = cp5.addButton("execute");
  executeButton.setPosition(width - 300, height - 50)
    .setSize(300, 50)
    .setLabel("Tjek og generer")
    .setFont(font)
    ;
}

void draw(){
  background(0, 151, 156);
  fill(255);
  /*
  // Validering af inputdata
  if(Float.isNaN(number)){
    text("Et indtastet tal er ikke gyldigt", 10, 10);
  }else{
    text(number, 10, 10);
  }
  */
}

void execute(){
  int[][] koordinatValue = new int[3][2];
  
  int n = 1;
  for(int i = 0; i < 3; i++){
    for(int j = 0; j < 2; j++){
      koordinatValue[i][j] = int(cp5.get(Textfield.class, "input" + str(n)).getText());
      n++;
    }
  }
  
}
