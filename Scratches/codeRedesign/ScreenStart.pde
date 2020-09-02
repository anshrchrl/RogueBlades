class ScreenStart {
  String sFile, sButtonFile;
  PImage imgBackground;
  Boolean isClicked;
  Button sprStartButton;
  ScreenStart () {
    sprStartButton = new Button ("startButton.png", (width/2 - 200), height/2, 400, 200);
    imgBackground = loadImage ("startingBackground.jpg");
    imgBackground.resize (width, height);
  }
  public void update() {
    //background(255);
    image(imgBackground, 0, 0);
    sprStartButton.update();
  }
  public void input() {
    if (sprStartButton.isTouched() == true){
      nScreen = 1;
    }
  }
}
