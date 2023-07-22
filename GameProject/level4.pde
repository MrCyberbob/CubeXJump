void level4(float platX, float platY, float goalX, float goalY) {

  float[] allPlatX = new float[8];
  float[] allPlatY = new float[8];

  float helpX;
  float helpY;

  for (int i = 1; i < allPlatX.length; i++) {

    allPlatX[i] = platX;
    allPlatY[i] = platY;

    platform(platX, platY, 100, 10);

    if (i == 2 || i == 3) {

      for (float j = platX; j <= platX+80; j += 20) {
        upSpike(j, platY);
      }
    }

    if (i == 2) {
      upSpike(platX+40, platY-40);
      platform(platX+20, platY-40, 60, 10);
    }

    if (i < 1) {

      platX = platX*1.35+50;
      platY += 33;
    } else if (i == 3) {

      platX = allPlatX[2];
      platY = allPlatY[2] + 50;
    } else {

      platX = platX*0.9 +250;
      platY -= 34;
    }

    helpX = allPlatX[2];
    helpY = allPlatY[2];

    collectableHeart4(helpX+49, helpY-100);
  }

  solidGround(100);
  goal(goalX, goalY, goalXstretch, goalYstretch);

  // advance to next level
  nextLevel(goalX, goalY+goalYstretch, goalY, 10, 500);
}
