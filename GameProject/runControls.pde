void runControls() {

  state = "controls";

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

  noStroke();
  fill(tr, tg, tb);
  rect(200, 70, 145, 40, 5);
  rect(200, 120, 145, 40, 5);
  rect(200, 170, 145, 40, 5);
  rect(200, 371, 145, 40, 5);

  textFont(normal, text);

  textSize(text);
  fill(#FFFFFF);
  text("Jump", 10, 100);
  text("(Press twice for a Double-Jump!)", 355, 100);
  text("Left", 10, 150);
  text("Right", 10, 200);
  text("Hint: If you're quick enough, you can climb back up to the main platform when you fall!", 10, 300);
  text("Quit to Menu", 10, 400);
  textSize(text-10);
  text("Game saves progress automatically", 10, 540);

  textFont(abang, text);
  menuButton(-10, 470, backWidth+30, back, 10, 500, tr, tg, tb);
  backWidth = textWidth(back);
  textFont(normal, text);

  fill(#FFFFFF);
  text("W/SPACE", 207, 100);
  text("A", 264, 150);
  text("D", 264, 200);
  text("Q", 264, 400);
}
