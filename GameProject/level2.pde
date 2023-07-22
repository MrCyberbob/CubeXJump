void level2(float platX, float platY, float goalX, float goalY) {

  float[] allPlatX = new float[5];
  float[] allPlatY = new float[5];

  for (int i = 0; i < allPlatX.length; i++) {

    allPlatX[i] = platX;
    allPlatY[i] = platY;

    platform(platX, platY, 100, 10);

    platX = platX*1.35 +100;
    platY -= 34;
  }

  solidGround(width/2);
  goal(goalX, goalY, goalXstretch, goalYstretch);

  // advance to next level
  nextLevel(goalX, goalY+goalYstretch, goalY, 10, 500);
}
