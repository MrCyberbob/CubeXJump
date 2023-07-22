void runMenu() {

  state = "menu";

  cursor(CROSS);

  levelMusic.stop();
  menuMusic.amp(1.0);
  water.stop();
  lastLevel.stop();
  showPlat = false;
  creditSong.stop();
  creditsY = height-150;

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
  noStroke();

  continueWidth = textWidth(continueGame);
  startWidth = textWidth(start);
  controlsWidth = textWidth(controls);
  colorWidth = textWidth(colorPick);
  quitWidth = textWidth(quit);
  creditWidth = textWidth(credits);

  if (whichLevel > 0 && lives > 0) {
    if (whichLevel == 10) {
      menuButton(-10, 120, continueWidth+195, continueGame, 10, 150, tr, tg, tb);
    } else if (whichLevel < 10) {
      menuButton(-10, 120, continueWidth+140, continueGame, 10, 150, tr, tg, tb); // needs x, y, xStretch, text, textX, textY
    }
  }

  menuButton(-10, 170, startWidth+30, start, 10, 200, tr, tg, tb);
  menuButton(-10, 270, controlsWidth+30, controls, 10, 300, tr, tg, tb);
  menuButton(-10, 320, colorWidth+30, colorPick, 10, 350, tr, tg, tb);
  menuButton(-10, 470, quitWidth+30, quit, 10, 500, tr, tg, tb);
  menuButton(width-creditWidth-20, 470, 200, credits, width-creditWidth-10, 500, tr, tg, tb);

  // start bg text
  textFont(abang, 120);
  fill(#FFFFFF);
  text("Cube", 602, 302);

  textFont(abang, 40);
  text("x", 699, 332);

  textFont(abang, 120);
  text("Jump", 702, 402);

  textFont(abang, 20);
  text("by Mr   Cyberbob", 706, 421);

  textFont(normal, 14);
  text("_", 764, 417);
  //end bg text

  textFont(abang, 120);
  fill(tr, tg, tb);
  text("Cube", 600, 300);

  textFont(abang, 40);
  text("x", 697, 330);

  textFont(abang, 120);
  text("Jump", 700, 400);

  textFont(abang, 20);
  text("by Mr   Cyberbob", 705, 420);

  textFont(normal, 14);
  text("_", 763, 416);

  textFont(abang, text);

  if (victory == true) {
    rotate(PI/-10);
    textFont(abang, 35);
    fill(204, 191, 4);
    text("Completed  "+wins, 450, 420);
    textFont(normal, 35);
    text(":", 650, 415);
    textFont(abang, text);
    rotate(PI/10);
  }

  if (whichLevel > 1) {
    menuButton(1020, 120, 210, "Choose Level", 1025, 150, tr, tg, tb);
  }

  if (choose == true) {
    if (whichLevel > 1) {
      menuButton(1050, 170, 25, "1", 1055, 200, tr, tg, tb);
    }

    if (whichLevel > 2) {
      menuButton(1170, 170, 25, "2", 1175, 200, tr, tg, tb);
    }

    if (whichLevel > 3) {
      fill(tr, tg, tb);
      rect(1045, 210, 155, 3);
      menuButton(1050, 220, 25, "3", 1055, 250, tr, tg, tb);
    }

    if (whichLevel > 4) {
      menuButton(1170, 220, 25, "4", 1175, 250, tr, tg, tb);
    }

    if (whichLevel > 5) {
      fill(tr, tg, tb);
      rect(1045, 260, 155, 3);
      menuButton(1050, 270, 25, "5", 1055, 300, tr, tg, tb);
    }

    if (whichLevel > 6) {
      menuButton(1170, 270, 25, "6", 1175, 300, tr, tg, tb);
    }

    if (whichLevel > 7) {
      fill(tr, tg, tb);
      rect(1045, 310, 155, 3);
      menuButton(1050, 320, 25, "7", 1055, 350, tr, tg, tb);
    }

    if (whichLevel > 8) {
      menuButton(1170, 320, 25, "8", 1175, 350, tr, tg, tb);
    }

    if (whichLevel > 9) {
      fill(tr, tg, tb);
      rect(1045, 360, 155, 3);
      menuButton(1050, 370, 25, "9", 1055, 400, tr, tg, tb);
    }
    
    if (whichLevel > 10) {
      menuButton(1170, 370, 40, "10", 1175, 400, tr, tg, tb);
    }
  }
}
