void movement() {

  // player can fall and move
  playerVelocityY += gravity;
  playerVelocityX = (rightKey - leftKey) * playerSpeed;

  playerX += playerVelocityX;
  playerY += playerVelocityY;

  // cant go out of screen (left)
  if (playerX <= 0) {
    playerVelocityX = 0;
    playerX = 0;
  }

  // cant go out of screen (right)
  if  (playerX >= width - playerSize) {
    playerVelocityX = 0;
    playerX = width - playerSize;
  }

  // reset jumps
  if (playerVelocityY == 0) {
    jumps = 0;
    gravity = .3;
  }

  if (playerVelocityY == playerJumpSpeed) {
    gravity = .3;
  }
}

// walk on main platform
void solidGround(float floorXstretch) {

  // floor
  fill(bgr, bgg, bgb);
  stroke(255);
  rect(-1, height - playerSize, floorXstretch, playerSize);

  if (playerX <= floorXstretch && playerY >= height - playerSize*2) {

    playerVelocityY = 0;
    playerY = height - playerSize*2;
    jumps = 0;
  }

  if (playerX >= floorXstretch && playerY >= height+200) {

    playerX = spawnX;
    playerY = spawnY;

    death.amp(0.8);
    death.play();
    jumps = 0;
    lives--;

    showPlat = false;
  }
}
