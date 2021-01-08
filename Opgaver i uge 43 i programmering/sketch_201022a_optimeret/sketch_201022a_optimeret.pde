// initiering og deklaration af variablerne
int j = 0;
// strengen som vi skal lede i 
String es = "I al hemmelighed har Ulrich Larsen i ti år uden om myndigheder arbejdet på at afsløre nordkoreanske ulovligheder. Hans farlige dobbeltliv førte ham til møder med repræsentanter fra regimet, som tilbød stoffer, håndvåben og missiler.";
// søg så længe at sand er falsk
for (int i = 0; i < es.length(); i++){
  if(es.charAt(i)=='e'){
    // hvis det er et 'e' skriver vi det ud og tæller j en op.
    print(es.charAt(i));
    j++;
  }
}
// når løkken er færdig skal jeg udskrive antallet a e'er
println(" | Antal e'er: " + j); //<>//
