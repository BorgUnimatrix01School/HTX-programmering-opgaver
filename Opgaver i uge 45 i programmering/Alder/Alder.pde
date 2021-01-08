void setup(){
  size(900, 900);
  noLoop();
}

void draw(){
  // Del 1 og 2
  int myBirthYear = 2003;
  int myBirthMonth = 1;
  println(howOldInYears(myBirthYear));
  println(howOldInMonths(myBirthYear, myBirthMonth));
}

int howOldInYears(int myBirthYear){
  return year() - myBirthYear;
}

int howOldInMonths(int myBirthYear, int myBirthMonth){
  int monthsOld = 0;
  if(myBirthMonth > month()){
    monthsOld = month() + ((howOldInYears(myBirthYear) - 1) * 12);
  }
  if(myBirthMonth <= month()){
    monthsOld = month() - myBirthMonth + (howOldInYears(myBirthYear) * 12);
  }
  return monthsOld;
}
