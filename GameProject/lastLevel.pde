void lastLevel(float platX, float platY, float goalX, float goalY) {

  movingPlatX = 300;
  levelMusic.stop();
  water.stop();

  if (!lastLevel.isPlaying()) {
    lastLevel.play();
  }
  lastLevel.amp(0.8);

  float[] allPlatX = new float[5];
  float[] allPlatY = new float[5];
  float platXstretch = 75;

  for (int i = 0; i < allPlatX.length; i++) {

    allPlatX[i] = platX;
    allPlatY[i] = platY;

    platform(platX, platY, platXstretch, 10);

    if (i == 1) {

      platX -= 300;
      platY +=100;
      platXstretch = 100;

      for (float j = platX; j <= platX+80; j += 20) {
        upSpike(j, platY);
        downSpike(j, platY+10);
      }
    } else if (i == 3) {

      platX -= 100;
      platY -= 50;
      platXstretch = 75;

      for (float k = platX+35; k <= platX+55; k += 20) {
        upSpike(k, platY);
      }

      downSpike(platX+55, platY+10);
    } else {

      platX += 400;
      platY -= 200;
      platXstretch = 80;

      for (float m = platX; m <= platX+60; m += 20) {
        activatedUpSpike(m, platY);
      }
    }
  }

  upMovingPlatform(470, 50, 10, 400, 500);
  leftMovingPlatform(200, 50, 10, 300, 100);

  activator(150, 150);

  activatedPlatform(900, 300, 75, 10);
  activatedPlatform(1000, 225, 75, 10);
  activatedPlatform(1100, 150, 75, 10);

  for (float n = 995; n <= 1035; n += 20) {
    activatedUpSpike(n, 110);
  }

  activatedPlatform(995, 110, 80, 10);

  activatedPlatform(900, 75, 75, 10);

  for (float l = 120; l <= 180; l += 20) {
    activatedUpSpike(l, 250);
  }

  activatedPlatform(120, 250, 80, 10);

  solidGround(55);
  goal(goalX, goalY, goalYstretch, goalXstretch);

  // advance to next level, "nextLevel()" not used due to function logic
  if (((playerX >= goalX && playerX <= goalX+goalYstretch) || (playerX+playerSize >= goalX && playerX+playerSize <= goalX+goalYstretch)) && playerY+playerSize/1.5 <= goalY) {
    creditsY = height-150;
    state = "credits";
    victory = true;
    wins++;

    nextLevel.amp(0.8);
    nextLevel.play();
    jumps = 0;

    if (repeat == false) {

      whichLevel++;
      tempLevel = whichLevel;
    } else {

      playerX = -playerSize;
      playerY = height-playerSize;
      jumps = 0;
      gravity = .3;
      runMenu();
      whichLevel = tempLevel;
    }
  }
}
