// Deklaration og initiering af variabler
String es = "I al hemmelighed har Ulrich Larsen i ti år uden om myndigheder arbejdet på at afsløre nordkoreanske ulovligheder. Hans farlige dobbeltliv førte ham til møder med repræsentanter fra regimet, som tilbød stoffer, håndvåben og missiler.";
char b = 'e';
int j = 0;

// Deklaration og initiering af funktioner
void printCharToConsole(char c){
  print(c);
}
void printResultToConsole(int i){
  println(" | Antal valgte bogstaver: " + i);
}

// Setup and draw
void setup(){
  noLoop();
}

void draw(){
  for(int i = 0; i < es.length(); i++){
    if(es.charAt(i) == b){
      // hvis det er et 'e' skriver vi det ud og tæller j en op.
      printCharToConsole(es.charAt(i));
      j++;
    }
  }
  printResultToConsole(j);
  j = 0;
} //<>//
