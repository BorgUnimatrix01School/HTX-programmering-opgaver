// Declaration and initiation of variables
// Del 1 variables
String line1 = "Hej med dig!";
// Del 2 variables

// Del 3 variables
String line3 = "Dette er en sætning som indeholder mange e'er. Men hvor mange er der";
// Del 4 variables
String line4 = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";
int[] line4Pos = {39,19,41,6,4,16,6,4,16,35,95,41,48,95};
// Del 5 variables

// Del 6 variables

// Del 7 variables

// Del 8 variables

// Del 9 variables

// Del 10 variables



// Del 1 functions
void del1ForLoop(String line){
  for (int i = 0; i <= 5; i++){
    if (i == 5){
      println(line.charAt(i));
    }
  }
}

void del1WhileLoop(String line){
  boolean TF = false;
  int i = 0;
  while (!TF){
    if (i == 5){
      println(line.charAt(i));
      TF = true;
    }
    i++;
  }
}
// Del 2 functions
void del2ForLoop(){
  for (int i = 0; i <= 30; i++){
    if (i >= 10 && i <= 20){
      print(i + ", ");
    }
  }
  println();
}
void del2WhileLoop(){
  boolean EOF = false;
  int i = 0;
  while (!EOF){
    if (i > 30){
      EOF = true;
    }
    if (i >= 10 && i <= 20){
      print(i + ", ");
    }
    i++;
  }
  println();
}
// Del 3 functions
void del3ForLoop(String line){
  int e = 0;
  for (int i = 0; i < line.length(); i++){
    if (line.charAt(i) == 'e'){
      print(line.charAt(i));
      e++;
    }
  }
  println();
  println("Der er " + e + " e'er i sætningen");
}
void del3WhileLoop(String line){
  int i = 0;
  int e = 0;
  while (i < line.length()){
    if (line.charAt(i) == 'e'){
      print(line.charAt(i));
      e++;
    }
    i++;
  }
  println();
  println("Der er " + e + " e'er i sætningen");
}
// Del 4 functions
void del4ForLoop(String line, int[] pos){
  println(line);
  for (int i = 0; i < pos.length; i++){
    print(line.charAt(pos[i]));
  }
  println();
}
void del4WhileLoop(String line, int[] pos){
  println(line);
  int i = 0;
  while(i < pos.length){
    print(line.charAt(pos[i]));
    i++;
  }
  println();
}
// Del 5 functions
void del5Length(String line){
  println("Sætningen er " + line.length() + " tegn lang");
}
// Del 6 functions
void del6Cut(String line){
  println(line.substring(83));
}
// Del 7 functions
void del7Cut(String line){
  println(line.substring(83, 85));
}
// Del 8 functions
void del8Upper(String line){
  println(line.toUpperCase());
}
// Del 9 functions
void del9Lower(String line){
  println(line.toLowerCase());
}
// Del 10 functions



void setup(){
  noLoop();
}

void draw(){
  // Del 1
  del1ForLoop(line1);
  del1WhileLoop(line1);
  println();
  // Del 2
  del2ForLoop();
  del2WhileLoop();
  println();
  // Del 3
  del3ForLoop(line3);
  del3WhileLoop(line3);
  println();
  // Del 4
  del4ForLoop(line4, line4Pos);
  del4WhileLoop(line4, line4Pos);
  println();
  // Del 5
  del5Length(line4);
  println();
  // Del 6
  del6Cut(line4);
  println();
  // Del 7
  del7Cut(line4);
  println();
  // Del 8
  del8Upper(line4);
  println();
  // Del 9
  del9Lower(line4);
  println();
  // Del 10
  /*programmet udskriver "Det gør den ikke!", fordi stringen "Nej" ikke er lige så stor som stringen "Ja".
  Dette kan ændres ved at gøre str2, altså "Nej" til en string med 2 bogstaver i stedet for 3.*/
  println();
}
