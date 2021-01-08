void setup(){
  noLoop();
}

void draw(){
  int[] startDate = {18, 4, 1864};
  int[] endDate = {day(), month(), year()};
  println(howFarApart(startDate, endDate));
}

int howFarApart(int[] startDate, int[] endDate){
  int[] daysInMonthsNormal = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  int[] daysInMonthsShoot = {31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  
  int delayTime = 0;
  
  boolean EOC = false;
  byte stepSwitch = 1;
  int daysApart = 0;
  while(EOC == false){
    // EOC checker - stops counting, if the ending date has been reached.
    if(startDate[0] >= endDate[0] && startDate[1] >= endDate[1] && startDate[2] >= endDate[2]){
      EOC = true;
      break;
    }
    switch(stepSwitch){
      case 1:
        if(startDate[0] == 1 && startDate[1] == 1){
          stepSwitch = 2;
          break;
        }
        daysApart++;
        startDate[0]++;
        break;
      case 2:
        if(startDate[2] == endDate[2]){
          stepSwitch = 3;
          break;
        }
        if(shootChecker(startDate[2]) == true){
          daysApart += 366;
        } else {
          daysApart += 365;
        }
        startDate[2]++;
        break;
      case 3:
        daysApart++;
        startDate[0]++;
    }
    // Day checker, including shoot year check -> month add
    if(shootChecker(startDate[2]) == true && startDate[0] > daysInMonthsShoot[startDate[1] - 1]){
      startDate[0] = 1;
      startDate[1]++;
    }
    if(shootChecker(startDate[2]) == false && startDate[0] > daysInMonthsNormal[startDate[1] - 1]){
      startDate[0] = 1;
      startDate[1]++;
    }
    // Month checker -> year add
    if(startDate[1] > 12){
      startDate[1] = 1;
      startDate[2]++;
    }
    
    printDate(startDate[0], startDate[1], startDate[2], daysApart);
    delay(delayTime);
  }
  return daysApart;
}

boolean shootChecker(int year){
  boolean shoot = false;
  if((year % 4 == 0 && year % 100 != 0) || year % 400 == 0){
    shoot = true;
  }
  return shoot;
}

void printDate(int day, int month, int year, int daysApart){
  println(day + ", " + month + ", " + year + " | " + daysApart);
}
