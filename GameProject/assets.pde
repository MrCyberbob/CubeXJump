// arrow found on https://forum.processing.org/one/topic/drawing-an-arrow.html
void drawArrow(float cx, float cy, float len, float angle) {
  pushMatrix();
  stroke(255, 255, 255);
  translate(cx, cy);
  rotate(radians(angle));
  line(5, 5, len, 0);
  line(len, 0, len - 8, -8);
  line(len, 0, len - 8, 8);
  popMatrix();

  stroke(0, 0, 0);
}

//goal
void goal(float x, float y, float xStretch, float yStretch) {

  stroke(255);
  fill(r, g, b);
  rect(x, y, xStretch, yStretch);
  stroke(0);
}

// level number
void displayNumbers() {

  showHearts();
  noStroke();

  if (whichLevel < 10) {

    textFont(abang);
    textSize(50);
    fill(r, g, b, 170);

    rect(60, 50, 200, 55, 20);
    fill(255, 255, 255);
    text("Level " + whichLevel, 70, 100);
  } else {

    textFont(abang);
    textSize(50);
    fill(r, g, b, 170);

    rect(60, 50, 305, 55, 20);
    fill(255, 255, 255);
    text("Final Level", 70, 100);
  }
}

void setBackground(PImage name, float x, float y, float alpha) {

  if (state.equals("menu") || state.equals("controls") || state.equals("colors") || state.equals("gameOver") || state.equals("credits")) {
    tint(bgr, bgg, bgb, alpha);
  } else {
    tint(255, alpha);
  }

  image(name, x, y);
}

void platform(float x, float y, float xStretch, float yStretch) {

  // platform
  stroke(255);
  fill(105, 105, 105);
  rect(x, y, xStretch, yStretch);

  // shadow
  noStroke();
  fill(105, 105, 105, 70);
  rect(x, y, xStretch, 50, 10);

  if (playerX >= x-playerSize+1 && playerX <= x+xStretch && playerY <= y && playerY >= y-playerSize-1 && playerVelocityY >= 0) {

    playerVelocityY = 0;
    playerY = y - playerSize;
    gravity = 0;
  }
}

void activatedPlatform(float x, float y, float xStretch, float yStretch) {

  if (showPlat == true) {

    // platform
    fill(bgr, bgg, bgb);
    stroke(255);
    rect(x, y, xStretch, yStretch);

    // shadow
    noStroke();
    fill(bgr, bgg, bgb, 70);
    rect(x, y, xStretch, 50, 10);

    if (playerX >= x-playerSize+1 && playerX <= x+xStretch && playerY <= y && playerY >= y-playerSize-1 && playerVelocityY >= 0) {

      playerVelocityY = 0;
      playerY = y - playerSize;
      gravity = 0;
    }
  } else {

    // platform
    fill(bgr, bgg, bgb, 100);
    stroke(255, 150);
    rect(x, y, xStretch, yStretch);

    // shadow
    noStroke();
    fill(bgr, bgg, bgb, 70);
    rect(x, y, xStretch, 50, 10);
  }
}

void upSpike(float x, float y) {

  stroke(255);
  fill(105, 105, 105);
  triangle(x, y, x+10, y-20, x+20, y);

  if (((playerX >= x && playerX <= x+20) || (playerX+playerSize >= x && playerX+playerSize <= x+20)) && playerY <= y && playerY+playerSize/1.5 >= y-20) {

    playerX = spawnX;
    playerY = spawnY;

    death.amp(0.8);
    death.play();
    jumps = 0;
    lives--;

    showPlat = false;
  }
}

void activatedUpSpike(float x, float y) {

  if (showPlat == true) {

    fill(bgr, bgg, bgb);
    stroke(255);

    triangle(x, y, x+10, y-20, x+20, y);

    if (((playerX >= x && playerX <= x+20) || (playerX+playerSize >= x && playerX+playerSize <= x+20)) && playerY <= y && playerY+playerSize/1.5 >= y-20) {

      playerX = spawnX;
      playerY = spawnY;

      death.amp(0.8);
      death.play();
      jumps = 0;
      lives--;

      showPlat = false;
    }
  } else {

    fill(bgr, bgg, bgb, 100);
    stroke(bgr, bgg, bgb, 150);

    triangle(x, y, x+10, y-20, x+20, y);
  }
}

void downSpike(float x, float y) {

  stroke(255);
  fill(105, 105, 105);
  triangle(x, y, x+10, y+20, x+20, y);

  if (((playerX >= x && playerX <= x+20) || (playerX+playerSize >= x && playerX+playerSize <= x+20)) && playerY >= y && playerY+playerSize/1.5 <= y+20) {

    playerX = spawnX;
    playerY = spawnY;

    death.amp(0.8);
    death.play();
    jumps = 0;
    lives--;

    showPlat = false;
  }
}

// start moving platforms
void rightMovingPlatform(float y, float xStretch, float yStretch, float rightBounds, float leftBounds) {

  platform(movingPlatX, y, xStretch, yStretch);

  if (movingPlatX >= rightBounds) {
    moveRight = false;
  }

  if (movingPlatX <= leftBounds) {
    moveRight = true;
  }

  if (moveRight == true) {
    movingPlatX += 3;
  } else {
    movingPlatX -= 3;
  }

  if (playerX >= movingPlatX-playerSize+1 && playerX <= movingPlatX+xStretch && playerY <= y && playerY >= y-playerSize-1 && playerVelocityY >= 0) {

    playerVelocityY = 0;
    playerY = y - playerSize;
    gravity = 0;

    if (moveRight == false) {

      playerX -= 3;
    }

    if (moveRight == true) {

      playerX += 3;
    }
  }
}

void leftMovingPlatform(float y, float xStretch, float yStretch, float rightBounds, float leftBounds) {

  platform(movingPlat2X, y, xStretch, yStretch);

  if (movingPlat2X >= rightBounds) {
    moveRight = true;
  }

  if (movingPlat2X <= leftBounds) {
    moveRight = false;
  }

  if (moveRight == true) {
    movingPlat2X -= 3;
  } else {
    movingPlat2X += 3;
  }

  if (playerX >= movingPlat2X-playerSize+1 && playerX <= movingPlat2X+xStretch && playerY <= y && playerY >= y-playerSize-1 && playerVelocityY >= 0) {

    playerVelocityY = 0;
    playerY = y - playerSize;
    gravity = 0;

    if (moveRight == false) {

      playerX += 3;
    }

    if (moveRight == true) {

      playerX -= 3;
    }
  }
}

void upMovingPlatform(float x, float xStretch, float yStretch, float topBounds, float bottomBounds) {

  platform(x, movingPlatY, xStretch, yStretch);

  if (movingPlatY >= bottomBounds) {
    moveUp = true;
  }

  if (movingPlatY <= topBounds) {
    moveUp = false;
  }

  if (moveUp == true) {

    movingPlatY -= 2;
  } else {

    movingPlatY += 2;
  }

  if (playerX >= x-playerSize+1 && playerX <= x+xStretch && playerY <= movingPlatY && playerY >= movingPlatY-playerSize-1 && playerVelocityY >= 0) {

    playerVelocityY = 0;
    playerY = movingPlatY - playerSize;
    gravity = 0;

    if (moveUp == true) {

      playerY -= 2;
    } else {

      playerY += 2;
    }
  }
}
// end moving platforms

void menuButton(float x, float y, float xStretch, String text, float textX, float textY, float tr, float tg, float tb) {

  noStroke();
  fill(255, 255, 255);
  rect(x, y, xStretch, 35, 20);
  fill(tr, tg, tb);
  text(text, textX, textY);

  if (whichLevel > 0 && state.equals("menu") && lives > 0) {
    if (whichLevel < 10) {

      text("Level " + whichLevel, continueWidth+20, 150);
    } else if (whichLevel == 10) {

      text("Final Level", continueWidth+20, 150);
    }
  }

  if (mouseX >= x && mouseX <= x+xStretch && mouseY >= y && mouseY <= y+35) {

    if (mouseX > width/2 && mouseY > 400) {

      noStroke();
      fill(255, 255, 255);
      rect(x-40, y+12, 20, 10, 20);
    } else {

      noStroke();
      fill(255, 255, 255);
      rect(x+xStretch+20, y+12, 20, 10, 20);
    }
  }
}

void setColor(float newR, float newG, float newB) {

  r = newR;
  g = newG;
  b = newB;

  tr = r;
  tg = g;
  tb = b;

  bgr = r+55;
  bgg = g+55;
  bgb = b+55;
}

void heart(float x, float y) {

  noStroke();
  fill(255, 0, 0);

  rect(x, y, 3, 3);
  rect(x-3, y-3, 9, 3);
  rect(x-6, y-6, 15, 3);
  rect(x-9, y-12, 21, 6);
  rect(x-6, y-15, 6, 3);
  rect(x+3, y-15, 6, 3);
  rect(x, y-12, 3, 3);
}

void emptyHeart(float x, float y) {

  noStroke();
  fill(0, 0, 0);

  rect(x, y, 3, 3);
  rect(x-3, y-3, 9, 3);
  rect(x-6, y-6, 15, 3);
  rect(x-9, y-12, 21, 6);
  rect(x-6, y-15, 6, 3);
  rect(x+3, y-15, 6, 3);
  rect(x, y-12, 3, 3);
}

void extraHeart(float x, float y) {

  noStroke();
  fill(199, 169, 8);

  rect(x, y, 3, 3);
  rect(x-3, y-3, 9, 3);
  rect(x-6, y-6, 15, 3);
  rect(x-9, y-12, 21, 6);
  rect(x-6, y-15, 6, 3);
  rect(x+3, y-15, 6, 3);
  rect(x, y-12, 3, 3);
}

void collectableHeart1(float x, float y) {

  if (((playerX >= x-12 && playerX <= x+12) || (playerX+playerSize >= x-12 && playerX+playerSize <= x+12)) && ((playerY <= y && playerY >= y-18) || (playerY+playerSize <= y && playerY+playerSize >= y-18))) {
    if (heart1 == false) {
      heart.play();
      lives++;
      heart1 = true;
    }
  }

  if (heart1 == false) {
    noStroke();
    fill(255, 0, 0);

    rect(x, y, 3, 3);
    rect(x-3, y-3, 9, 3);
    rect(x-6, y-6, 15, 3);
    rect(x-9, y-12, 21, 6);
    rect(x-6, y-15, 6, 3);
    rect(x+3, y-15, 6, 3);
    rect(x, y-12, 3, 3);
  } else {

    noStroke();
    fill(0, 0, 0);

    rect(x, y, 3, 3);
    rect(x-3, y-3, 9, 3);
    rect(x-6, y-6, 15, 3);
    rect(x-9, y-12, 21, 6);
    rect(x-6, y-15, 6, 3);
    rect(x+3, y-15, 6, 3);
    rect(x, y-12, 3, 3);
  }
}

void collectableHeart2(float x, float y) {

  if (((playerX >= x-12 && playerX <= x+12) || (playerX+playerSize >= x-12 && playerX+playerSize <= x+12)) && ((playerY <= y && playerY >= y-18) || (playerY+playerSize <= y && playerY+playerSize >= y-18))) {
    if (heart2 == false) {
      heart.play();
      lives++;
      heart2 = true;
    }
  }

  if (heart2 == false) {
    noStroke();
    fill(255, 0, 0);

    rect(x, y, 3, 3);
    rect(x-3, y-3, 9, 3);
    rect(x-6, y-6, 15, 3);
    rect(x-9, y-12, 21, 6);
    rect(x-6, y-15, 6, 3);
    rect(x+3, y-15, 6, 3);
    rect(x, y-12, 3, 3);
  } else {

    noStroke();
    fill(0, 0, 0);

    rect(x, y, 3, 3);
    rect(x-3, y-3, 9, 3);
    rect(x-6, y-6, 15, 3);
    rect(x-9, y-12, 21, 6);
    rect(x-6, y-15, 6, 3);
    rect(x+3, y-15, 6, 3);
    rect(x, y-12, 3, 3);
  }
}

void collectableHeart3(float x, float y) {

  if (((playerX >= x-12 && playerX <= x+12) || (playerX+playerSize >= x-12 && playerX+playerSize <= x+12)) && ((playerY <= y && playerY >= y-18) || (playerY+playerSize <= y && playerY+playerSize >= y-18))) {
    if (heart3 == false) {
      heart.play();
      lives++;
      heart3 = true;
    }
  }

  if (heart3 == false) {
    noStroke();
    fill(255, 0, 0);

    rect(x, y, 3, 3);
    rect(x-3, y-3, 9, 3);
    rect(x-6, y-6, 15, 3);
    rect(x-9, y-12, 21, 6);
    rect(x-6, y-15, 6, 3);
    rect(x+3, y-15, 6, 3);
    rect(x, y-12, 3, 3);
  } else {

    noStroke();
    fill(0, 0, 0);

    rect(x, y, 3, 3);
    rect(x-3, y-3, 9, 3);
    rect(x-6, y-6, 15, 3);
    rect(x-9, y-12, 21, 6);
    rect(x-6, y-15, 6, 3);
    rect(x+3, y-15, 6, 3);
    rect(x, y-12, 3, 3);
  }
}

void collectableHeart4(float x, float y) {

  if (((playerX >= x-12 && playerX <= x+12) || (playerX+playerSize >= x-12 && playerX+playerSize <= x+12)) && ((playerY <= y && playerY >= y-18) || (playerY+playerSize <= y && playerY+playerSize >= y-18))) {
    if (heart4 == false) {
      heart.play();
      lives++;
      heart4 = true;
    }
  }

  if (heart4 == false) {
    noStroke();
    fill(255, 0, 0);

    rect(x, y, 3, 3);
    rect(x-3, y-3, 9, 3);
    rect(x-6, y-6, 15, 3);
    rect(x-9, y-12, 21, 6);
    rect(x-6, y-15, 6, 3);
    rect(x+3, y-15, 6, 3);
    rect(x, y-12, 3, 3);
  } else {

    noStroke();
    fill(0, 0, 0);

    rect(x, y, 3, 3);
    rect(x-3, y-3, 9, 3);
    rect(x-6, y-6, 15, 3);
    rect(x-9, y-12, 21, 6);
    rect(x-6, y-15, 6, 3);
    rect(x+3, y-15, 6, 3);
    rect(x, y-12, 3, 3);
  }
}

void activator(float x, float y) {

  if (showPlat == false) {

    fill(bgr, bgg, bgb);
    stroke(255);
    rect(x, y, 20, 20, 1);
  } else {

    fill(bgr, bgg, bgb, 100);
    stroke(255, 150);
    rect(x, y, 20, 20, 1);
  }

  if (((playerX >= x && playerX <= x+20) || (playerX+playerSize >= x && playerX+playerSize <= x+20)) && ((playerY <= y+20 && playerY >= y) || (playerY+playerSize <= y+20 && playerY+playerSize >= y))) {

    if (showPlat == false) {
      nextLevel.play();
      showPlat = true;
    }
  }
}

void showHearts() {

  // start display hearts
  if (lives == 1) {

    heart(110, 130);
    for (float a = 134; a <= 206; a += 24) {
      emptyHeart(a, 130);
    }
  } else if (lives == 2) {

    for (float b = 110; b <= 134; b += 24) {
      heart(b, 130);
    }
    for (float a = 158; a <= 206; a += 24) {
      emptyHeart(a, 130);
    }
  } else if (lives == 3) {

    for (float b = 110; b <= 158; b += 24) {
      heart(b, 130);
    }
    for (float a = 182; a <= 206; a += 24) {
      emptyHeart(a, 130);
    }
  } else if (lives == 4) {

    for (float b = 110; b <= 182; b += 24) {
      heart(b, 130);
    }
    emptyHeart(206, 130);
  } else if (lives == 5) {

    for (float b = 110; b <= 206; b += 24) {
      heart(b, 130);
    }
  } else if (lives == 6) {

    for (float b = 110; b <= 206; b += 24) {
      heart(b, 130);
    }
    extraHeart(230, 130);
  } else if (lives == 7) {

    for (float b = 110; b <= 206; b += 24) {
      heart(b, 130);
    }

    for (float a = 230; a <= 254; a += 24) {
      extraHeart(a, 130);
    }
  } else if (lives == 8) {

    for (float b = 110; b <= 206; b += 24) {
      heart(b, 130);
    }

    for (float a = 230; a <= 278; a += 24) {
      extraHeart(a, 130);
    }
  } else if (lives == 9) {

    for (float b = 110; b <= 206; b += 24) {
      heart(b, 130);
    }

    for (float a = 230; a <= 302; a += 24) {
      extraHeart(a, 130);
    }
  }
  // end display hearts
}
