/*
  Initialization
*/

int doorX, doorY, doorW, doorH;
int col1x, col2x, col3x, col4x;
int row1y, row2y, row3y, row4y, row5y, row6y, row7y;
int buttonW, buttonH;
int screenX, screenY, screenW, screenH;
int u1, u2, u3, u4;
int printNum;
color numButton, cookButton, setButton;
color highlight;
color screen;
color door;
int savedTime, totalTime, passedTime, remainingTime;
int[] num;
boolean resetHighlight, cooking, input;
boolean user1, user2, user3, user4, clock, rotate, power,
        one, two, three, four, five, six, timer, seven, eight,
        nine, zero, start, stop, open, thirty;
        
/*
  Provides dimensioning and default values
*/

void setup() {
  size(1000, 500);
  background(50, 50, 50);
  
  numButton = color(150, 150, 150);
  cookButton = color(150, 50, 50);
  setButton = color(50, 100, 150);
  highlight = color(180, 120, 60);
  screen = color(0, 0, 0);
  door = color(100, 100, 100);
  
  doorX = 30;
  doorY = 30;
  doorW = 560;
  doorH = 440;
  
  screenX = 644;
  screenY = 30;
  screenW = 342;
  screenH = 55;
  
  buttonW = 75;
  buttonH = 40;
  
  col1x = 644;
  col2x = 733;
  col3x = 822;
  col4x = 911;
  
  row1y = 100;
  row2y = 155;
  row3y = 210;
  row4y = 265;
  row5y = 320;
  row6y = 375;
  row7y = 430;
  
  u1 = 45000;
  u2 = 90000;
  u3 = 150000;
  u4 = 300000;
  
  totalTime = 0;
  
  num = new int[1];
  num[0] = 0;
  printNum = 0;
}

/*
  Every frame, the environment updates in consideration of the supplied
  mouseX and mouseY arguments and redraws based on the logic provided
*/

void draw() {
  update(mouseX, mouseY);
  
  fill(door);
  rect(doorX, doorY, doorW, doorH);
  
  fill(screen);
  rect(screenX, screenY, screenW, screenH);
  rect(620, 0, 6, 500);
  
  // Timer runs if cooking is true
  if(cooking) {
    passedTime = millis() - savedTime;
    remainingTime = (totalTime - passedTime - 1) / 1000 + 1;
    
    if(totalTime <= passedTime) {
      passedTime = 0;
      savedTime = 0;
      totalTime = 0;
      cooking = false;
    }
  }
  
  // If no button is hovered, all buttons are redrawn without highlight
  if(resetHighlight) {
  
    fill(cookButton);
    rect(col1x, row1y, buttonW, buttonH);
    rect(col2x, row1y, buttonW, buttonH);
    rect(col3x, row1y, buttonW, buttonH);
    rect(col4x, row1y, buttonW, buttonH);
    rect(col1x, row2y, buttonW, buttonH);
    rect(col2x, row2y, buttonW, buttonH);
    rect(col3x, row2y, buttonW, buttonH);
    rect(col4x, row2y, buttonW, buttonH);
    rect(col1x, row7y, buttonW, buttonH);
    rect(col2x, row7y, buttonW, buttonH);
    rect(col3x, row7y, buttonW, buttonH);
    rect(col4x, row7y, buttonW, buttonH);
    
    fill(numButton);
    rect(col1x, row3y, buttonW, buttonH);
    rect(col2x, row3y, buttonW, buttonH);
    rect(col3x, row3y, buttonW, buttonH);
    rect(col1x, row4y, buttonW, buttonH);
    rect(col2x, row4y, buttonW, buttonH);
    rect(col3x, row4y, buttonW, buttonH);
    rect(col1x, row5y, buttonW, buttonH);
    rect(col2x, row5y, buttonW, buttonH);
    rect(col3x, row5y, buttonW, buttonH);
    rect(col2x, row6y, buttonW, buttonH);
    rect(col1x, row6y, buttonW, buttonH);
    rect(col3x, row6y, buttonW, buttonH);
    
    fill(setButton);
    rect(col4x, row3y, buttonW, buttonH);
    rect(col4x, row4y, buttonW, buttonH);
    rect(col4x, row5y, buttonW, buttonH);
    rect(col4x, row6y, buttonW, buttonH);
  
  }
  
  // Draws clock/timer
  fill(30, 180, 140);
  textSize(48);
  
  if(cooking) {
    if(remainingTime % 60 > 9) {
      text(remainingTime / 60 + ":" + remainingTime % 60, col2x + 13, 76);
    }
    else text(remainingTime / 60 + ":0" + remainingTime % 60, col2x + 13, 76);
  }
  else if(input) {
    text(arrayToNum(num, num.length), col2x + 13, 76);
  }
  else {
    if(minute() > 9) {
      text(hour() + ":" + minute(), col2x + 13, 76);
    }
    else {
      text(hour() + ":0" + minute(), col2x + 13, 76);
    }
  }
  
  fill(0, 0, 0);
  textSize(16);
  
  // Magic numbers for text centering
  text("1", col1x + 32, row3y + 27);
  text("2", col2x + 32, row3y + 27);
  text("3", col3x + 32, row3y + 27);
  text("4", col1x + 32, row4y + 27);
  text("5", col2x + 32, row4y + 27);
  text("6", col3x + 32, row4y + 27);
  text("7", col1x + 32, row5y + 27);
  text("8", col2x + 32, row5y + 27);
  text("9", col3x + 32, row5y + 27);
  text("0", col2x + 32, row6y + 27);
  
  text("START", col1x + 12, row6y + 27);
  text("STOP", col3x + 17, row6y + 27);
  text("POPCORN", col1x, row1y + 27);
  text("POTATO", col2x + 5, row1y + 27);
  text("DRINK", col3x + 12, row1y + 27);
  text("BOIL", col4x + 20, row1y + 27);
  text("USER-1", col1x + 7, row2y + 27);
  text("USER-2", col2x + 8, row2y + 27);
  text("USER-3", col3x + 8, row2y + 27);
  text("USER-4", col4x + 7, row2y + 27);
  text("+30 SEC", col1x + 3, row7y + 27);
  text("POWER", col2x + 9, row7y + 27);
  text("DEFROST", col3x + 2, row7y + 27);
  text("REHEAT", col4x + 7, row7y + 27);
  
  text("CLOCK", col4x + 11, row3y + 27);
  text("TIMER", col4x + 14, row4y + 27);
  text("ROTATE", col4x + 5, row5y + 27);
  text("OPEN", col4x + 16, row6y + 27);
}

void update(int x, int y) {
  
  fill(highlight);
  
  // Check if any button is hovered or pressed
  // Most buttons don't activate when cooking is true
  if(checkMouse(col1x, row1y, x, y)) {
    rect(col1x, row1y, buttonW, buttonH);
    if(!cooking && mousePressed) {
      cooking = true;
      savedTime = millis();
      totalTime = 110000;
    }
  }
  else if(checkMouse(col2x, row1y, x, y)) {
    rect(col2x, row1y, buttonW, buttonH);
    if(!cooking && mousePressed) {
      cooking = true;
      savedTime = millis();
      totalTime = 180000;
    }
  }
  else if(checkMouse(col3x, row1y, x, y)) {
    rect(col3x, row1y, buttonW, buttonH);
    if(!cooking && mousePressed) {
      cooking = true;
      savedTime = millis();
      totalTime = 50000;
    }
  }
  else if(checkMouse(col4x, row1y, x, y)) {
    rect(col4x, row1y, buttonW, buttonH);
    if(!cooking && mousePressed) {
      cooking = true;
      savedTime = millis();
      totalTime = 135000;
    }
  }
  // User times can be set to the currently running timer
  // by selecting the user button while cooking is true
  else if(checkMouse(col1x, row2y, x, y)) {
    rect(col1x, row2y, buttonW, buttonH);
    user1 = true;
    if(cooking && mousePressed) {
      u1 = totalTime;
    }
    else if(!cooking && mousePressed) {
      cooking = true;
      savedTime = millis();
      totalTime = u1;
    }
  }
  else if(checkMouse(col2x, row2y, x, y)) {
    rect(col2x, row2y, buttonW, buttonH);
    user2 = true;
    if(cooking && mousePressed) {
      u2 = totalTime;
    }
    else if(!cooking && mousePressed) {
      cooking = true;
      savedTime = millis();
      totalTime = u2;
    }
  }
  else if(checkMouse(col3x, row2y, x, y)) {
    rect(col3x, row2y, buttonW, buttonH);
    user3 = true;
    if(cooking && mousePressed) {
      u3 = totalTime;
    }
    else if(!cooking && mousePressed) {
      cooking = true;
      savedTime = millis();
      totalTime = u3;
    }
  }
  else if(checkMouse(col4x, row2y, x, y)) {
    rect(col4x, row2y, buttonW, buttonH);
    user4 = true;
    if(cooking && mousePressed) {
      u4 = totalTime;
    }
    else if(!cooking && mousePressed) {
      cooking = true;
      savedTime = millis();
      totalTime = u4;
    }
  }
  // Number button functionality is contained
  // within the mouseReleased function to
  // prevent click-and-hold behavior
  else if(checkMouse(col1x, row3y, x, y)) {
    rect(col1x, row3y, buttonW, buttonH);
    one = true;
  }
  else if(checkMouse(col2x, row3y, x, y)) {
    rect(col2x, row3y, buttonW, buttonH);
    two = true;
  }
  else if(checkMouse(col3x, row3y, x, y)) {
    rect(col3x, row3y, buttonW, buttonH);
    three = true;
  }
  else if(checkMouse(col4x, row3y, x, y)) {
    rect(col4x, row3y, buttonW, buttonH);
    clock = true;
    if(!cooking && mousePressed) {
      // timer stuff
    }
  }
  else if(checkMouse(col1x, row4y, x, y)) {
    rect(col1x, row4y, buttonW, buttonH);
    four = true;
  }
  else if(checkMouse(col2x, row4y, x, y)) {
    rect(col2x, row4y, buttonW, buttonH);
    five = true;
  }
  else if(checkMouse(col3x, row4y, x, y)) {
    rect(col3x, row4y, buttonW, buttonH);
    six = true;
  }
  else if(checkMouse(col4x, row4y, x, y)) {
    rect(col4x, row4y, buttonW, buttonH);
    timer = true;
    if(!cooking && mousePressed) {
      // timer stuff
    }
  }
  else if(checkMouse(col1x, row5y, x, y)) {
    rect(col1x, row5y, buttonW, buttonH);
    seven = true;
  }
  else if(checkMouse(col2x, row5y, x, y)) {
    rect(col2x, row5y, buttonW, buttonH);
    eight = true;
  }
  else if(checkMouse(col3x, row5y, x, y)) {
    rect(col3x, row5y, buttonW, buttonH);
    nine = true;
  }
  else if(checkMouse(col4x, row5y, x, y)) {
    rect(col4x, row5y, buttonW, buttonH);
    rotate = true;
    if(mousePressed) {
      // timer stuff
    }
  }
  // Starts custom time
  else if(checkMouse(col1x, row6y, x, y)) {
    rect(col1x, row6y, buttonW, buttonH);
    start = true;
    if(!cooking && mousePressed) {
      cooking = true;
      input = false;
      savedTime = millis();
      totalTime = arrayToNum(num, num.length) * 1000;
      num = new int[1];
      num[0] = 0;
    }
  }
  else if(checkMouse(col2x, row6y, x, y)) {
    rect(col2x, row6y, buttonW, buttonH);
    zero = true;
  }
  // Stops current timer or cancels any states
  else if(checkMouse(col3x, row6y, x, y)) {
    rect(col3x, row6y, buttonW, buttonH);
    stop = true;
    if(!cooking && mousePressed) {
      num = new int[1];
      num[0] = 0;
      input = false;
    }
    else if(cooking && mousePressed) {
      totalTime = 0;
      num = new int[1];
      num[0] = 0;
      input = false;
    }
  }
  else if(checkMouse(col4x, row6y, x, y)) {
    rect(col4x, row6y, buttonW, buttonH);
    open = true;
    if(mousePressed) {
      // timer stuff
    }
  }
  // Like number buttons, functionality is in
  // mouseReleased() function
  else if(checkMouse(col1x, row7y, x, y)) {
    rect(col1x, row7y, buttonW, buttonH);
    thirty = true;
  }
  else if(checkMouse(col2x, row7y, x, y)) {
    rect(col2x, row7y, buttonW, buttonH);
    power = true;
    if(!cooking && mousePressed) {
      // timer stuff
    }
  }
  else if(checkMouse(col3x, row7y, x, y)) {
    rect(col3x, row7y, buttonW, buttonH);
    if(!cooking && mousePressed) {
      cooking = true;
      savedTime = millis();
      totalTime = 240000;
    }
  }
  else if(checkMouse(col4x, row7y, x, y)) {
    rect(col4x, row7y, buttonW, buttonH);
    if(!cooking && mousePressed) {
      cooking = true;
      savedTime = millis();
      totalTime = 75000;
    }
  }
  // If none are hovered, resetHighlight is true and
  // number buttons are reset to false
  else {
    resetHighlight = true;
    one = two = three = four = five = six = seven = eight = nine = zero = false;
    thirty = false;
    return;
  }
  resetHighlight = false;
  return;
}

boolean checkMouse(int col, int row, int x, int y) {
  if(x > col && x < col + 75 && y > row && y < row + 40) {
    return true;
  }
  return false;
}

// Contains functionalities that were
// prone to misbehavior on click
void mouseReleased() {
  if(thirty) {
    cooking = true;
    totalTime += 30000;
    if(savedTime == 0) {
      savedTime = millis();
    }
  }
  else if(!cooking) {
    if(one) {
      input = true;
      if(num.length < 5) {
        num = append(num, 1);
      }
    }
    else if(two) {
      input = true;
      if(num.length < 5) {
        num = append(num, 2);
      }
    }
    else if(three) {
      if(num.length < 5) {
        num = append(num, 3);
      }
    }
    else if(four) {
      input = true;
      if(num.length < 5) {
        num = append(num, 4);
      }
    }
    else if(five) {
      input = true;
      if(num.length < 5) {
        num = append(num, 5);
      }
    }
    else if(six) {
      input = true;
      if(num.length < 5) {
        num = append(num, 6);
      }
    }
    else if(seven) {
      input = true;
      if(num.length < 5) {
        num = append(num, 7);
      }
    }
    else if(eight) {
      input = true;
      if(num.length < 5) {
        num = append(num, 8);
      }
    }
    else if(nine) {
      input = true;
      if(num.length < 5) {
        num = append(num, 9);
      }
    }
    else if(zero) {
      input = true;
      if(num.length < 5) {
        num = append(num, 0);
      }
    }
  }
  return;
}

// Turns user input into proper int
int arrayToNum(int[] in, int len) {
  int ret = 0;
  
  for(int i = 1; i < len; i++) {
    ret += pow(10, i-1) * in[len-i];
  }
  
  return ret;
}
