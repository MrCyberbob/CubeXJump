void level9(float platX, float platY, float goalX, float goalY) {

  water.amp(0.8);

  leftMovingPlatform(595, 100, 10, 1150, 150);

  platform(400, 560, 80, 10);
  for (float j = 400; j <= 460; j += 20) {
    downSpike(j, 570);
    upSpike(j, 560);
  }

  platform(900, 560, 80, 10);
  for (float j = 900; j <= 960; j += 20) {
    downSpike(j, 570);
    upSpike(j, 560);
  }

  solidGround(120);
  goal(goalX, goalY, goalXstretch, goalYstretch);

  // advance to next level
  nextLevel(goalX, goalY+goalYstretch, goalY, 10, 500);
}
