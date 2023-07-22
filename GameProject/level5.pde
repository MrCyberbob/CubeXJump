void level5(float platX, float platY, float goalX, float goalY) {

  float[] allPlatX = new float[5];
  float[] allPlatY = new float[5];

  for (int i = 0; i < allPlatX.length; i++) {

    allPlatX[i] = platX;
    allPlatY[i] = platY;

    if (i == 1) {

      platform(platX, platY*0.8, 100, 10);
      upSpike(platX+40, platY*0.8);
    }

    if (i == 2) {

      platform(platX, platY*0.8, 100, 10);
      upSpike(platX, platY);
      upSpike(platX+80, platY*0.8);
    }

    if (i == 3) {

      platform(platX, platY*0.8, 100, 10);

      for (float j = platX; j <= platX+80; j += 20) {
        downSpike(j, platY*0.8+10);
      }
    }

    platform(platX, platY, 100, 10);

    if (i % 2 == 0) {
      platX += 200;
    } else {
      platX += 300;
    }

    platY -= 34;
  }

  solidGround(95);
  goal(goalX, goalY, goalXstretch, goalYstretch);

  // "goal-preventer"
  platform(goalX, goalY+goalYstretch, 20, 10);
  downSpike(goalX, goalY+goalYstretch+10);

  // advance to next level, "nextLevel()" not used due to function logic
  if (playerX <= goalX && ((playerY <= goalY+goalYstretch && playerY >= goalY) || (playerY+playerSize <= goalY+goalYstretch && playerY >= goalY))) {

    playerX = width-playerSize-10;
    playerY = 400;

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


    movingPlatX = 350;
    movingPlat2X = 800;

    movingPlatY = 400;
  }
}
