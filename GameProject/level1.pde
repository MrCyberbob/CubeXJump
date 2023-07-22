void level1(float platX, float platY, float goalX, float goalY) {

  float[] allPlatX = new float[6];
  float[] allPlatY = new float[6];

  for (int i = 0; i < allPlatX.length; i++) {

    allPlatX[i] = platX;
    allPlatY[i] = platY;

    platform(platX, platY, 100, 10);

    platX += 200;
    platY -= 25;
  }

  upSpike(450, height-playerSize);

  drawArrow(goalX-120, goalY, 100, 10);
  solidGround(width+1);
  goal(goalX, goalY, goalXstretch, goalYstretch);

  // advance to next level
  nextLevel(goalX, goalY+goalYstretch, goalY, 10, 500);
}
