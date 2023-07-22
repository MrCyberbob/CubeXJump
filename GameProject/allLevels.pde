void levels() {

  if (whichLevel == 1) {

    setBackground(forest, 0, -20, 255); // receives PImage, x, y, tint
    displayNumbers();
    player(playerX, playerY); // player is covered by platforms but not the background
    spawnX = 10;
    spawnY = 500;
    level1(100, height-55, width-10, 350); // level receives platform and goal coordinates
  }

  if (whichLevel == 2) {

    setBackground(river, 0, -50, 255);
    displayNumbers();
    player(playerX, playerY);
    spawnX = 10;
    spawnY = 500;
    level2(100, height-55, width-10, 500);
  }

  if (whichLevel == 3) {

    setBackground(sunset, 0, -180, 255);
    displayNumbers();
    player(playerX, playerY);
    spawnX = 10;
    spawnY = 500;
    level3(200, height-100, width-40, height-10);
  }

  if (whichLevel == 4) {

    setBackground(forest2, 0, 0, 255);
    displayNumbers();
    player(playerX, playerY);
    spawnX = 10;
    spawnY = 500;
    level4(100, height-75, width-10, height/1.5);
  }

  if (whichLevel == 5) {

    setBackground(night, 0, 0, 255);
    displayNumbers();
    player(playerX, playerY);
    spawnX = 10;
    spawnY = 500;
    level5(100, height-55, 0, 380);
  }

  if (whichLevel == 6) {

    setBackground(night2, 0, 0, 255);
    displayNumbers();
    player(playerX, playerY);
    spawnX = width-playerSize-10;
    spawnY = 400;
    level6(100, height-75, width-10, 200);
  }

  if (whichLevel == 7) {

    setBackground(fog, 0, -460, 255);
    displayNumbers();
    player(playerX, playerY);
    spawnX = 10;
    spawnY = 200;
    level7(100, height-55, width-10, 315);
  }

  if (whichLevel == 8) {

    setBackground(dawn, 0, 0, 255);
    displayNumbers();
    player(playerX, playerY);
    spawnX = 10;
    spawnY = 200;
    level8(200, 450, width-10, 500);
  }

  if (whichLevel == 9) {

    setBackground(cave, -50, -600, 255);
    displayNumbers();
    player(playerX, playerY);
    spawnX = 10;
    spawnY = 500;
    level9(200, 450, width-10, 500);
  }

  if (whichLevel == 10) {

    setBackground(entrance, -100, -200, 255);
    displayNumbers();
    player(playerX, playerY);
    spawnX = 10;
    spawnY = 500;
    lastLevel(200, 550, 915, 0);
  }

  if (lives == 0) {

    state = "gameOver";
  }
}
