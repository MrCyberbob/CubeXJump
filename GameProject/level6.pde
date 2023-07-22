void level6(float platX, float platY, float goalX, float goalY) {

  float[] allPlatX = new float[8];
  float[] allPlatY = new float[8];

  for (int i = 0; i < allPlatX.length; i++) {

    allPlatX[i] = platX;
    allPlatY[i] = platY;

    platform(platX, platY, 100, 10);

    if (i == 0 || i == 2 || i == 3) {

      for (float j = platX; j <= platX+80; j += 20) {
        upSpike(j, platY);
      }
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

    // platform at start of moving platforms
    platform(allPlatX[7], allPlatY[7]-75, 100, 10);

    // platform at end of moving platforms
    platform(allPlatX[7], allPlatY[7]-310, 100, 10);
  }

  // start platform
  platform(width-60, 550, 65, 10);

  rightMovingPlatform(400, 100, 10, 800, 350);
  leftMovingPlatform(200, 100, 10, 800, 350);
  upMovingPlatform(150, 100, 10, 200, 400);

  // platform at start of upward moving platform
  platform(250, 400, 100, 10);

  // platform at end of upward moving platform
  platform(250, 200, 100, 10);

  solidGround(100);
  goal(goalX, goalY, goalXstretch, goalYstretch);

  collectableHeart2(40, 605);

  // advance to next level
  nextLevel(goalX, goalY+goalYstretch, goalY, 10, 200);
}
