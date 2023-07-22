void mouseClicked() {

  if (state.equals("menu")) {

    if (whichLevel > 0 && lives > 0) {

      repeat = false;
      if (whichLevel < 10) {
        if (mouseX <= continueWidth+140 && mouseY >= 120 && mouseY <= 155) {


          if (whichLevel == 6) {

            playerX = width-playerSize-10;
            playerY = 400;

            movingPlatX = 350;
            movingPlat2X = 800;
            moveRight = true;
            movingPlatY = 400;
          } else if (whichLevel == 7) {

            playerX = 10;
            playerY = 200;
          } else if (whichLevel == 8) {

            playerX = 10;
            playerY = 200;
          } else if (whichLevel == 9) {

            playerX = 10;
            playerY = 500;

            movingPlat2X = 1150;
          } else {

            playerX = 10;
            playerY = 500;
          }

          delay(200);
          menuMusic.stop();
          runGame();
        }
      } else if (whichLevel == 10) {

        if (mouseX <= continueWidth+195 && mouseY >= 120 && mouseY <= 155) {

          playerX = 10;
          playerY = 500;

          movingPlat2X = 300;
          showPlat = false;

          delay(200);
          menuMusic.stop();
          runGame();
        }
      }
    }

    if (mouseX <= startWidth+20 && mouseY >= 170 && mouseY <= 205) {

      playerX = 10;
      playerY = 500;

      whichLevel = 1;
      tempLevel = 1;
      lives = 5;
      repeat = false;
      heart1 = false;
      heart2 = false;
      heart3 = false;
      heart4 = false;
      delay(200);
      runGame();
    }

    if (mouseX <= controlsWidth+20 && mouseY >= 270 && mouseY <= 305) {
      delay(200);
      choose = false;
      runControls();
    }

    if (mouseX <= colorWidth+20 && mouseY >= 320 && mouseY <= 355) {
      delay(200);
      choose = false;
      runColors();
    }

    if (mouseX >= 1020 && mouseX <= 1230 && mouseY >= 120 && mouseY <= 155) {
      if (choose == false) {
        choose = true;
      } else {
        choose = false;
      }
    }

    if (whichLevel > 1) {
      if (mouseX >= 1050 && mouseX <= 1075 && mouseY >= 170 && mouseY <= 205) { // choose Level 1
        repeat = true;
        tempLevel = whichLevel;
        whichLevel = 1;
        playerX = 10;
        playerY = 500;
        delay(200);
        runGame();
      }
    }


    if (whichLevel > 2) {
      if (mouseX >= 1170 && mouseX <= 1195 && mouseY >= 170 && mouseY <= 205) { // choose Level 2
        repeat = true;
        tempLevel = whichLevel;
        whichLevel = 2;
        playerX = 10;
        playerY = 500;
        delay(200);
        runGame();
      }
    }

    if (whichLevel > 3) {
      if (mouseX >= 1050 && mouseX <= 1075 && mouseY >= 220 && mouseY <= 255) { // choose Level 3
        repeat = true;
        tempLevel = whichLevel;
        whichLevel = 3;
        playerX = 10;
        playerY = 500;
        delay(200);
        runGame();
      }
    }

    if (whichLevel > 4) {
      if (mouseX >= 1170 && mouseX <= 1195 && mouseY >= 220 && mouseY <= 255) { // choose Level 4
        repeat = true;
        tempLevel = whichLevel;
        whichLevel = 4;
        playerX = 10;
        playerY = 500;
        delay(200);
        runGame();
      }
    }

    if (whichLevel > 5) {
      if (mouseX >= 1050 && mouseX <= 1075 && mouseY >= 270 && mouseY <= 305) { // choose Level 5
        repeat = true;
        tempLevel = whichLevel;
        whichLevel = 5;
        playerX = 10;
        playerY = 500;
        delay(200);
        runGame();
      }
    }

    if (whichLevel > 6) {
      if (mouseX >= 1170 && mouseX <= 1195 && mouseY >= 270 && mouseY <= 305) { // choose Level 6
        repeat = true;
        tempLevel = whichLevel;
        whichLevel = 6;
        playerX = width-playerSize-10;
        playerY = 400;

        movingPlatX = 350;
        movingPlat2X = 800;
        moveRight = true;
        movingPlatY = 400;
        delay(200);
        runGame();
      }
    }

    if (whichLevel > 7) {
      if (mouseX >= 1050 && mouseX <= 1075 && mouseY >= 320 && mouseY <= 355) { // choose Level 7
        repeat = true;
        tempLevel = whichLevel;
        whichLevel = 7;
        playerX = 10;
        playerY = 200;
        delay(200);
        runGame();
      }
    }

    if (whichLevel > 8) {
      if (mouseX >= 1170 && mouseX <= 1195 && mouseY >= 320 && mouseY <= 355) { // choose Level 8
        repeat = true;
        tempLevel = whichLevel;
        whichLevel = 8;
        playerX = 10;
        playerY = 200;
        delay(200);
        runGame();
      }
    }

    if (whichLevel > 9) {
      if (mouseX >= 1050 && mouseX <= 1075 && mouseY >= 370 && mouseY <= 405) { // choose Level 9
        repeat = true;
        tempLevel = whichLevel;
        whichLevel = 9;
        playerX = 10;
        playerY = 500;
        movingPlat2X = 1150;
        delay(200);
        runGame();
      }
    }

    if (whichLevel > 10) {
      if (mouseX >= 1170 && mouseX <= 1210 && mouseY >= 370 && mouseY <= 405) { // choose Level 10
        repeat = true;
        tempLevel = whichLevel;
        whichLevel = 10;
        playerX = 10;
        playerY = 500;
        movingPlat2X = 300;
        showPlat = false;
        delay(200);
        runGame();
      }
    }

    if (mouseX >= width-creditWidth-20 && mouseY >= 470 && mouseY <= 505) {

      delay(200);
      credits();
    }
    if (mouseX <= quitWidth+20 && mouseY >= 470 && mouseY <= 505) {
      exit();
    }
  }

  if (state.equals("controls") || state.equals("colors")) {

    if (mouseX <= backWidth+20 && mouseY >= 470 && mouseY <= 505) {
      delay(200);
      runMenu();
    }
  }

  if (state.equals("colors")) {

    if (mouseX <= blackWidth+20 && mouseY >= 70 && mouseY <= 105) {
      setColor(50, 50, 50);
    }

    if (mouseX <= redWidth+20 && mouseY >= 120 && mouseY <= 155) {
      setColor(75, 0, 0);
    }

    if (mouseX <= greenWidth+20 && mouseY >= 170 && mouseY <= 205) {
      setColor(0, 75, 0);
    }


    if (mouseX <= blueWidth+20 && mouseY >= 220 && mouseY <= 255) {
      setColor(30, 36, 96);
    }
  }

  if (state.equals("gameOver")) {

    if (mouseX <= startWidth+20 && mouseY >= 270 && mouseY <= 305) {

      delay(200);
      playerX = -playerSize;
      playerY = height-playerSize;
      gravity = .3;
      gameOver.stop();
      whichLevel = 0;
      heart1 = false;
      heart2 = false;
      heart3 = false;
      heart4 = false;
      victory = false;
      delay(200);
      runMenu();
    }

    if (mouseX <= quitWidth+20 && mouseY >= 320 && mouseY <= 355) {

      exit();
    }
  }

  if (state.equals("credits")) {
    if (creditsY <= -1850) {
      if (mouseX <= menuWidth+20 && mouseY >= 370 && mouseY <= 405) {

        playerX = -playerSize;
        playerY = height-playerSize;
        gravity = .3;
        creditSong.stop();
        delay(200);
        runMenu();
      }
    }
  }
}
