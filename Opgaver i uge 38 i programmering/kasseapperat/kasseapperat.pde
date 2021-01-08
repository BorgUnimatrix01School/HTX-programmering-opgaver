//Declaration and initiating variables
int belobUdenMoms = 100;
String navn = "Jens";

void setup(){
  noLoop();
}

//Declaration of functions
float plusMoms(int belobUdenMoms){
  return belobUdenMoms*1.25;
}
/* bliver ikke reelt brugt eller er ikke nødvendig
float minusMoms(int belobMedMoms){
  return belobMedMoms*0.8;
}*/
float moms(int belobUdenMoms){
  return belobUdenMoms*0.25;
}

void kvittering(String navn, int belobUdenMoms){
  int belobMedMoms = int(plusMoms(belobUdenMoms));
  println("Tak for dit køb " + navn + ",");
  println("Du har købt for " + belobMedMoms + " kroner.");
  println(" ");
  println("Beløb uden moms: " + belobUdenMoms);
  println("Beløb med moms: " + belobMedMoms);
  println("Momsbeløbet udgør: " + int(moms(belobUdenMoms)));
  println(" ");
  println("Dato: " + day() + "/" + month() + " " + year() + " kl " + hour() + ":" + minute());
}

// Udførelse af arbejde
void draw(){
  kvittering("Jens", belobUdenMoms);
}
