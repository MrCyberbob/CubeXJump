void level7(float platX, float platY, float goalX, float goalY) {

  float[] allPlatX = new float[7];
  float[] allPlatY = new float[7];

  for (int i = 0; i < allPlatX.length; i++) {

    allPlatX[i] = platX;
    allPlatY[i] = platY;

    if (i == 0) {

      platform(platX, platY-220, 100, 10);
      platform(platX, platY-350, 100, 10);
    }

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

    if (i == 4) {

      platX = 420;
      platY = 170;
    }
  }

  // start platform
  platform(-1, 300, 50, 10);

  collectableHeart3(145, 500);

  solidGround(95);
  goal(goalX, goalY, goalXstretch, goalYstretch);

  // advance to next level
  nextLevel(goalX, goalY+goalYstretch, goalY, 10, 200);
}
