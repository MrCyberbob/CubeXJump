void runColors() {

  state = "colors";

  cursor(CROSS);

  menuMusic.amp(1.0);
  setBackground(cubes, 0, 0, 20);

  playerMenu(playerX, playerY);
  playerX += 3;

  if (playerX >= width + playerSize) {
    playerX = -playerSize;
    tempR = random(255);
    tempG = random(255);
    tempB = random(255);
  }

  playerVelocityY += gravity;
  playerY += playerVelocityY;

  solidGround(width+1);

  textSize(text);

  menuButton(-10, 70, blackWidth+30, black, 10, 100, 50, 50, 50);
  blackWidth = textWidth(black);

  menuButton(-10, 120, redWidth+30, red, 10, 150, 75, 0, 0);
  redWidth = textWidth(red);

  menuButton(-10, 170, greenWidth+30, green, 10, 200, 0, 75, 0);
  greenWidth = textWidth(green);

  menuButton(-10, 220, blueWidth+30, blue, 10, 250, 30, 36, 96);
  blueWidth = textWidth(blue);

  menuButton(-10, 470, backWidth+30, back, 10, 500, tr, tg, tb);
  backWidth = textWidth(back);

  stroke(255);
  fill(r, g, b);
  rect(632, 238, 150, 150, 3);

  noStroke();
  fill(#FFFFFF);
  rect(677, 278, 10, 41);
  rect(732, 278, 10, 41);

  if (mouseX >= 632 && mouseX <= 782 && mouseY >= 238 && mouseY <= 388) {

    noStroke();
    fill(#FD5DA8);
    rect(645, 315, 20, 11);
    rect(754, 315, 20, 11);
  }
}
