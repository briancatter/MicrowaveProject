/*
  Initialization
*/

int doorX, doorY, doorW, doorH;
int col1x, col2x, col3x, col4x;
int row1y, row2y, row3y, row4y, row5y, row6y, row7y;
int buttonW, buttonH;
int screenX, screenY, screenW, screenH;
color numButton, cookButton, setButton;
color highlight;
color screen;
color door;
int savedTime, totalTime, passedTime;
boolean resetHighlight;

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
}

void draw() {
  update(mouseX, mouseY);
  
  fill(door);
  rect(doorX, doorY, doorW, doorH);
  
  fill(screen);
  rect(screenX, screenY, screenW, screenH);
  rect(620, 0, 6, 500);
  
  if (resetHighlight) {
  
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
  
  else {
    
  }
  
  // Magic numbers for text centering
  
  fill(30, 180, 140);
  textSize(48);
  
  text("10:08", col2x + 13, 76);
  
  fill(0, 0, 0);
  textSize(16);
  
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
  
  if(checkMouse(col1x, row1y, x, y)) {
    rect(col1x, row1y, buttonW, buttonH);
    
  }
  else if(checkMouse(col1x, row2y, x, y)) {
    rect(col1x, row2y, buttonW, buttonH);
    
  }
  else if(checkMouse(col1x, row3y, x, y)) {
    rect(col1x, row3y, buttonW, buttonH);
    
  }
  else if(checkMouse(col1x, row4y, x, y)) {
    rect(col1x, row4y, buttonW, buttonH);
    
  }
  else if(checkMouse(col1x, row5y, x, y)) {
    rect(col1x, row5y, buttonW, buttonH);
    
  }
  else if(checkMouse(col1x, row6y, x, y)) {
    rect(col1x, row6y, buttonW, buttonH);
    
  }
  else if(checkMouse(col1x, row7y, x, y)) {
    rect(col1x, row7y, buttonW, buttonH);
    
  }
  else if(checkMouse(col2x, row1y, x, y)) {
    rect(col2x, row1y, buttonW, buttonH);
    
  }
  else if(checkMouse(col2x, row2y, x, y)) {
    rect(col2x, row2y, buttonW, buttonH);
    
  }
  else if(checkMouse(col2x, row3y, x, y)) {
    rect(col2x, row3y, buttonW, buttonH);
    
  }
  else if(checkMouse(col2x, row4y, x, y)) {
    rect(col2x, row4y, buttonW, buttonH);
    
  }
  else if(checkMouse(col2x, row5y, x, y)) {
    rect(col2x, row5y, buttonW, buttonH);
    
  }
  else if(checkMouse(col2x, row6y, x, y)) {
    rect(col2x, row6y, buttonW, buttonH);
    
  }
  else if(checkMouse(col2x, row7y, x, y)) {
    rect(col2x, row7y, buttonW, buttonH);
    
  }
  else if(checkMouse(col3x, row1y, x, y)) {
    rect(col3x, row1y, buttonW, buttonH);
    
  }
  else if(checkMouse(col3x, row2y, x, y)) {
    rect(col3x, row2y, buttonW, buttonH);
    
  }
  else if(checkMouse(col3x, row3y, x, y)) {
    rect(col3x, row3y, buttonW, buttonH);
    
  }
  else if(checkMouse(col3x, row4y, x, y)) {
    rect(col3x, row4y, buttonW, buttonH);
    
  }
  else if(checkMouse(col3x, row5y, x, y)) {
    rect(col3x, row5y, buttonW, buttonH);
    
  }
  else if(checkMouse(col3x, row6y, x, y)) {
    rect(col3x, row6y, buttonW, buttonH);
    
  }
  else if(checkMouse(col3x, row7y, x, y)) {
    rect(col3x, row7y, buttonW, buttonH);
    
  }
  else if(checkMouse(col4x, row1y, x, y)) {
    rect(col4x, row1y, buttonW, buttonH);
    
  }
  else if(checkMouse(col4x, row2y, x, y)) {
    rect(col4x, row2y, buttonW, buttonH);
    
  }
  else if(checkMouse(col4x, row3y, x, y)) {
    rect(col4x, row3y, buttonW, buttonH);
    
  }
  else if(checkMouse(col4x, row4y, x, y)) {
    rect(col4x, row4y, buttonW, buttonH);
    
  }
  else if(checkMouse(col4x, row5y, x, y)) {
    rect(col4x, row5y, buttonW, buttonH);
    
  }
  else if(checkMouse(col4x, row6y, x, y)) {
    rect(col4x, row6y, buttonW, buttonH);
    
  }
  else if(checkMouse(col4x, row7y, x, y)) {
    rect(col4x, row7y, buttonW, buttonH);
    
  }
  else {
    resetHighlight = true;
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
