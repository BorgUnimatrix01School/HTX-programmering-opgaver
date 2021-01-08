//Variable declaration and initiation
float a = 1800;
float b = 900;
float c = 0;

int startX = 20;
int startY = 20;

//Canvas size
size(1920, 1080);

//pytagoras af manglede variabler
if(a == 0){
  a = sqrt(pow(c,2) - pow(b,2));
}
if(b == 0){
  b = sqrt(pow(c,2) - pow(a,2));
}
if(c == 0){
  c = sqrt(pow(a, 2) + pow(b, 2));
}

//Print triangle lenghts
println("a = " + a);
println("b = " + b);
println("c = " + c);

//Make triangle
//line a
line(startX, startY, startX+a, startY);
//line b
line(startX, startY, startX, startY+b);
//line c
line(startX, startY+b, startX+a, startY);
