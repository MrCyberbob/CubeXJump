void player(float x, float y) {

  stroke(255);
  fill(r, g, b);
  rect(x, y, playerSize, playerSize, 3);

  if (playerVelocityX < 0) { // moving left
    if (playerVelocityY == 0 || playerY >= height - playerSize*2) {

      eyes(x+3, y+5);
      eyes(x+10, y+5);
    } else if (playerVelocityY < 0) { // jumping

      eyes(x+3, y+2);
      eyes(x+10, y+2);
    } else if (playerVelocityY > 0) { // falling

      eyes(x+3, y+8);
      eyes(x+10, y+8);
    }
  } else if (playerVelocityX > 0) { // moving right
    if (playerVelocityY == 0 || playerY >= height - playerSize*2) {

      eyes(x+playerSize-3, y+5);
      eyes(x+playerSize-10, y+5);
    } else if (playerVelocityY < 0) {

      eyes(x+playerSize-3, y+2);
      eyes(x+playerSize-10, y+2);
    } else if (playerVelocityY > 0) {

      eyes(x+playerSize-3, y+8);
      eyes(x+playerSize-10, y+8);
    }
  } else if (playerVelocityX == 0) { // standing still
    if (playerVelocityY == 0 || playerY >= height - playerSize*2) {

      eyes(x+7, y+5);
      eyes(x+playerSize-7, y+5);
    } else if (playerVelocityY < 0) {

      eyes(x+7, y+2);
      eyes(x+playerSize-7, y+2);
    } else if (playerVelocityY > 0) {

      eyes(x+7, y+8);
      eyes(x+playerSize-7, y+8);
    }
  }
}

void playerMenu(float x, float y) {

  stroke(255);
  fill(tempR, tempG, tempB);
  rect(x, y, playerSize, playerSize, 3);

  noStroke();
  fill(#FFFFFF);

  if (playerVelocityY < 0) {

    eyes(x+playerSize-3, y+2);
    eyes(x+playerSize-10, y+2);
  } else if (playerVelocityY > 0) {

    eyes(x+playerSize-3, y+8);
    eyes(x+playerSize-10, y+8);
  } else {

    rect(x+playerSize+-3, y+5, 2, 7);
    rect(x+playerSize-10, y+5, 2, 7);
  }
}

void eyes(float x, float y) {

  noStroke();
  fill(#FFFFFF);
  rect(x, y, 2, 7);
  rect(x, y, 2, 7);
}
