void level8(float platX, float platY, float goalX, float goalY) {

  water.amp(0.6);

  float[] allPlatX = new float[7];
  float[] allPlatY = new float[7];

  float platXstretch = 100;
  for (int i = 0; i < allPlatX.length; i++) {

    allPlatX[i] = platX;
    allPlatY[i] = platY;

    platform(platX, platY, platXstretch, 10);

    if (i % 3 == 0) {

      platX += 100;
      platY -= 75;
      platXstretch -= 25;
    } else if (i == 5) {

      platX += 150;
      platY += 50;
      platXstretch -= 75;
    } else {

      platX += 180;
      platY += 80;
      platXstretch = 100;
    }

    if (i == 1 || i == 2 || i == 4) {
      for (float j = platX; j <= platX+80; j += 20) {
        upSpike(j, platY);
      }
    }
  }

  // start platform
  platform(-1, 300, 75, 10);

  solidGround(-10);
  goal(goalX, goalY, goalXstretch, goalYstretch);

  // advance to next level
  nextLevel(goalX, goalY+goalYstretch, goalY, 10, 500);
}
