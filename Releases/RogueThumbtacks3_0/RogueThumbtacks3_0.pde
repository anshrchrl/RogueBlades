// =================================GLOBAL VARIABLES============================== //<>//
int nDx, nDy, nSide, nSide2, nMove = 0, nScreen = 0, nStartClick;
//==========================================OBJECTS==============================
Screen1 scr1;
Screen2 scr2;
Screen3 scr3;
Screen4 scr4;
StartingScreen scrStart;
InfoScreen infScreen;
EndScreen endScreen;
Sprite sprHero;
//=======================================SETUP===================================
void setup () {
  size (1200, 800);
  frame.requestFocus();
  scrStart = new StartingScreen();
  infScreen = new InfoScreen();
  endScreen = new EndScreen();
  
  scr1 = new Screen1();
  scr2 = new Screen2();
  scr3 = new Screen3();
  scr4 = new Screen4();
  
  sprHero = new Sprite("bill.png", 100, height - 150, 75, 50, 0.6, 16.0, 0.8, 0, 6);
}
//=======================================DRAW===================================
void draw() {
  if (nScreen == 0) {
    scrStart.update();
  } else if (nScreen == 7) {
    infScreen.update();
  } else if (nScreen == 5) {
    endScreen.update();
  }
  if (nScreen == 1) {
    scr1.update();
  } else if (nScreen == 2) {
    scr2.update();
  } else if (nScreen == 3) {
    scr3.update();
  } else if (nScreen == 4) {
    scr4.update();
  }
  println(nScreen);
}
//===================================KEYPRESSED==================================
void keyPressed() {
  if (nScreen == 1) {
    scr1.pressInput();
  } else if (nScreen == 2) {
    scr2.pressInput();
  } else if (nScreen == 3) {
    scr3.pressInput();
  } else if (nScreen == 4) {
    scr4.pressInput();
  }
}
//===================================KEYRELEASED==================================
void keyReleased() {
  if (nScreen == 1) {
    scr1.releaseInput();
  } else if (nScreen == 2) {
    scr2.releaseInput();
  } else if (nScreen == 3) {
    scr3.releaseInput();
  } else if (nScreen == 4) {
    scr4.releaseInput();
  }
}
//===================================MOUSEPRESSED==================================
void mousePressed() {
  if (mouseButton == LEFT && nScreen == 0) {
    scrStart.input();
  } else if (mouseButton == LEFT && nScreen == 7) {
    infScreen.input();
  } else if (mouseButton == LEFT && nScreen == 5) {
    endScreen.input();
  }
}
