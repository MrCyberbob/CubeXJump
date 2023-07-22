void keyPressed() {

  if (key == 'a' || key == 'A')
  {
    leftKey = 1;
  }
  if (key == 'd' || key == 'D')
  {
    rightKey = 1;
  }

  if (jumps <= 1) {
    if (key == ' ' || key == 'w' || key == 'W')
    {
      playerVelocityY = playerJumpSpeed;
      upKey = 1;
      jumps++;
    }
  }

  if (key == 'q' || key == 'Q') {
    if (state.equals("menu")) {

      exit();
    } else if (state.equals("gameOver")) {

      jumps = 0;
      gravity = .3;
      runMenu();
      whichLevel = 0;
      gameOver.stop();
    } else {

      jumps = 0;
      gravity = .3;
      runMenu();
      whichLevel = tempLevel;
      delay(200);
    }
  }
}

void keyReleased() {

  if (key == 'a' || key == 'A')
  {
    leftKey = 0;
  }
  if (key == 'd' || key == 'D')
  {
    rightKey = 0;
  }
  if (key == 'w' || key == 'W' || key == ' ')
  {
    upKey = 0;
  }
}
