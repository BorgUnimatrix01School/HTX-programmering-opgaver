void setup(){
  noLoop();
}

// Deklaration og initiering af variabler
int i = 0;
float floaty = 0;
char c = 0;
boolean bool = false;
byte b = 0;
long l = 0;
double d = 0;

// Deklaration af funktioner
// Funktion til at teste maksværdien og mindsteværdein af integer
void testInteger(int i){
  i = int(pow(2, 31));
  println("Integer maks er 2^31: " + i);
  println("Plusser med 1 på maksværdien af int-variablen, hvilket giver et overflow, fordi den ikke kan håndtere det tal. Dette fører til dens mindsteværdi");
  i++;
  println("Integers mindsteværdi er -2^31: " + i);
}

// Funktion til at teste maksværdien og mindsteværdien af float
void testFloat(float f){
  println("Floats maksværdi er mellem 2^127 og 2^128. Det ses ved, at den går til Infinity. Eksempel: ");
  
  f = pow(2, 127);
  println("Float 2^127: " + f);
  f = pow(2, 128);
  println("Float 2^128: " + f);
  
  println("Floats mindsteværdi er mellem -2^127 og -2^128. Det ses ved, at den går til -Infinity. Eksempel: ");
  f = -pow(2, 127);
  println("Float -2^127: " + f);
  f = -pow(2, 128);
  println("Float -2^128: " + f);
  
}

// Funktion til at teste maksværdien og mindsteværdein af char
void testChar(char c){
  c = parseChar(int(pow(2,16) - 1));
  println(c + " svarer til " + int(c) + ", som er (2^16)-1 og er maks for char. Alle værdier over 255 giver ? i char, fordi den kun har angivet 255 tegn.");
  println("Plusser chars maksværdi med 1");
  c++;
  println(c + " (intet bogstav) svarer til " + int(c) + ". Char er blevet sat til dens mindsteværdi, altså " + i);
}

// Funktion til at teste maksværdien og mindsteværdien af boolean
void testBool(boolean bool){
  println("Bool kan kun vise true or false, 1 eller 0, men når man konverterer alt over 0 til bool, så giver den true, mens 0 giver false");
  bool = parseBoolean(1);
  println("Bool = 1: " + bool);
  println("Plusser 1 med 1");
  bool = parseBoolean(2);
  println("Bool = 2:" + bool);
  println("Bools størrelse er 1 byte, altså 8 bits, hvilket burde betyde, at dens maksværdi er 2^8");
  bool = parseBoolean(int(pow(2, 8)));
  println("Bool maksværdi: " + bool);
  print("Selvom man konverterer bool til int, så giver det stadig 1: ");
  println(int(bool));
}

// Funktion til at teste maksværdien og mindsteværdien af byte
void testByte(byte b){
  b = byte(pow(2, 7) - 1);
  println("Byte maks på (2^7)-1: " + b);
  println("Plusser med 1 på maksværdien af byte-variablen, så der sker overflow, som fører til bytes mindsteværdi.");
  b++;
  println("Byte mindsteværdi på -(2^7): " + b);
}

// Funktion til at teste maksværdien og mindsteværdien af long
void testLong(long l){
  l = 9223372036854775807L;
  println("Long maks på (2^63)-1: " + l);
  println("Plusser med 1 på long-variablens maksværdi, så der sker overflow, så mindsteværdien findes: ");
  l++;
  println("Long mindsteværdi på -(2^63): " + l);
}

// Funktion til at teste maksværdien og mindsteværdien af double
void testDouble(double d){
  println("Doubles maksværdi er mellem 2^1023 og 2^1024. Eksempel: ");
  
  d = Math.pow(2, 1023);
  println("Double 2^1023: " + d);
  d = Math.pow(2, 1024);
  println("Double 2^1024: " + d);
  
  println("Doubles mindsteværdi er mellem -2^1023 og -2^1024. Eksempel: ");
  
  d = -Math.pow(2, 1023);
  println("Double -2^1023: " + d);
  d = -Math.pow(2, 1024);
  println("Double -2^1024: " + d);
}

// Udførelse af funktioner
void draw(){
  // Del b
  testInteger(i);
  println(" ");
  testFloat(floaty);
  println(" ");
  testChar(c);
  println(" ");
  testBool(bool);
  println(" ");
  testByte(b);
  println(" ");
  testLong(l);
  println(" ");
  testDouble(d);
  println(" ");
  
  // Del d
  println(sqrt(2) * sqrt(2));
  println(Math.sqrt(2) * Math.sqrt(2));
  println("Kvadroden af 2 gange kvadratroden af 2 giver 2. sqrt() bruger float til at beregne med, og Math.sqrt() bruger double. Dette gør Math.sqrt() mere præcist, fordi double har 2 bits af præcision i forhold til floats 1 bit af præcision");
}
