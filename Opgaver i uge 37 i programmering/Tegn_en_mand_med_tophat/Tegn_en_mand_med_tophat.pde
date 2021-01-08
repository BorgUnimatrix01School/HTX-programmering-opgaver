//Sizes
int sizeX = 400;
int sizeY = 600;

size(400,600);
background(0,255,0);

//Face
strokeWeight(1.5);
fill(255,255,255);

//Head
circle(sizeX*0.5, sizeY*0.5, sizeX*0.8);

//Eye left
rect(sizeX*0.5-sizeX*0.25, sizeY*0.5-sizeY*0.15, sizeX*0.2, sizeX*0.2);
//Eye right
rect(sizeX*0.5+sizeX*0.05, sizeY*0.5-sizeY*0.15, sizeX*0.2, sizeX*0.2);

//Nose
circle(sizeX*0.5, sizeY*0.5, sizeX*0.225);

//Mouth
arc(sizeX*0.5, sizeY*0.5+sizeY*0.1, sizeX*0.5, sizeX*0.4, 0, PI);
line(sizeX*0.5-sizeX*0.25, sizeY*0.5+sizeY*0.1, sizeX*0.5+sizeX*0.25, sizeY*0.5+sizeY*0.1);
  
//Hat
fill(0,0,0);

rect(sizeX*0.5-sizeX*0.2, sizeY*0.5-sizeY*0.52, sizeX*0.4, sizeX*0.45);

strokeWeight(8);
line(sizeX*0.5-sizeX*0.4, sizeY*0.5-sizeY*0.225, sizeX*0.5+sizeX*0.4, sizeY*0.5-sizeY*0.225);
