void level3(float platX, float platY, float goalX, float goalY) {

  float[] allPlatX = new float[7];
  float[] allPlatY = new float[7];
  float platXstretch;

  for (int i = 0; i < allPlatX.length; i++) {

    allPlatX[i] = platX;
    allPlatY[i] = platY;

    if (i >= 1 && i <= 3) {

      platXstretch = 50;
      platform(platX, platY, platXstretch, 10);

      if (i == 3) {
        platX = platX*1.15 +platXstretch;
      } else {
        platX += 100;
      }
    } else {

      platXstretch = 100;
      platform(platX, platY, platXstretch, 10);
      platY -= 34;
      platX = platX*1.15 +platXstretch;
    }

    if (i == 1) {

      upSpike(platX, platY);
      upSpike(platX+30, platY);
    }
  }

  // "goal-preventer"
  platform(goalX-20, goalY-60, 60, 10);

  for (float j = goalX-20; j <= goalX+20; j += 20) {
    upSpike(j, goalY-60);
  }

  collectableHeart1(goalX-10, goalY-150);

  solidGround(width/3);
  goal(goalX, goalY, goalYstretch, goalXstretch);

  // advance to next level
  nextLevel(goalX, goalY+40+goalXstretch, goalY+40, 10, 500);
}
