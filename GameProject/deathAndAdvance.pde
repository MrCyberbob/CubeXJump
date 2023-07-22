// advancing to next level
void nextLevel(float x, float y1, float y2, float spawnX, float spawnY) { // receives goal coords, and new spawn
  if (playerX >= x-playerSize/2 && ((playerY <= y1 && playerY >= y2) || (playerY+playerSize <= y1 && playerY+playerSize >= y2))) {

    showPlat = false;

    if (whichLevel == 8) {

      movingPlat2X = 1150;
    }

    if (whichLevel == 9) {

      movingPlat2X = 300;
    }

    playerX = spawnX;
    playerY = spawnY;

    nextLevel.amp(0.8);
    nextLevel.play();
    jumps = 0;

    if (repeat == false) {

      whichLevel++;
      tempLevel = whichLevel;
    } else {

      playerX = -playerSize;
      playerY = height-playerSize;
      jumps = 0;
      gravity = .3;
      runMenu();
      whichLevel = tempLevel;
    }
  }
}

void gameOver() {

  cursor(CROSS);

  levelMusic.stop();
  lastLevel.stop();
  gameOver.amp(1.0);

  setBackground(cubes, 0, 0, 20);
  setBackground(hole, -500, -23, 20);
  setBackground(cracks, 490, 63, 150);
  cracks.resize(520, 565);

  // start bg text
  textFont(abang, 120);
  fill(#FFFFFF);
  text("Game", 602, 302);

  textFont(abang, 120);
  text("Over", 702, 402);
  //end bg text

  textFont(abang, 120);
  fill(tr, tg, tb);
  text("Game", 600, 300);

  textFont(abang, 120);
  text("Over", 700, 400);

  textFont(abang, text);

  menuButton(-10, 270, startWidth+30, start, 10, 300, tr, tg, tb);
  menuButton(-10, 320, quitWidth+30, quit, 10, 350, tr, tg, tb);
}

void credits() {

  state = "credits";
  cursor(CROSS);

  levelMusic.stop();
  menuMusic.stop();
  water.stop();
  lastLevel.stop();
  showPlat = false;

  setBackground(cubes, 0, 0, 20);

  textSize(text);
  noStroke();

  // start bg text
  textFont(abang, 120);
  fill(#FFFFFF);
  text("Cube", 602, creditsY+302);

  textFont(abang, 40);
  text("x", 699, creditsY+332);

  textFont(abang, 120);
  text("Jump", 702, creditsY+402);

  textFont(abang, 20);
  text("by Mr   Cyberbob", 706, creditsY+421);

  textFont(normal, 14);
  text("_", 764, creditsY+417);
  //end bg text

  textFont(abang, 120);
  fill(tr, tg, tb);
  text("Cube", 600, creditsY+300);

  textFont(abang, 40);
  text("x", 697, creditsY+330);

  textFont(abang, 120);
  text("Jump", 700, creditsY+400);

  textFont(abang, 20);
  text("by Mr   Cyberbob", 705, creditsY+420);

  textFont(normal, 14);
  text("_", 763, creditsY+416);

  textFont(abang, text);

  fill(255, 255, 255);
  text("| Game Designer |", width/3, creditsY+600);

  textFont(normal, text);
  text("Joshua Schmidt", width/3, creditsY+630);

  textFont(normal, 14);
  text("aka Mr_Cyberbob", width/3, creditsY+650);

  textFont(abang, text);
  text("| Game Programmer |", width/2, creditsY+830);

  textFont(normal, text);
  text("Joshua Schmidt", width/2, creditsY+860);

  textFont(abang, text);
  text("| Music |", width/4, creditsY+1060);

  textFont(normal, text);
  text("Menu Music: Hello Meteor - Morning Accept", width/4, creditsY+1090);
  text("Level Music: Olexandr Ignatov - Take Off", width/4, creditsY+1120);
  text("Last Level Music: Pawel Morytko - Worlds Apart", width/4, creditsY+1150);
  text("Game Over Music: Digital Sadness - She is the Night", width/4, creditsY+1180);
  text("Credits Music: Victorious SECRT - Young and Free", width/4, creditsY+1210);
  text("Sound Effects from freesound.org and pixabay.com", width/4, creditsY+1270);

  textFont(abang, text);
  text("| Images |", width/3, creditsY+1470);

  textFont(normal, text);
  text("All images were taken from pixabay.com", width/3, creditsY+1500);

  textFont(abang, text);
  text("| Playtesters |", width/2.5, creditsY+1700);

  textFont(normal, text);
  text("Name", width/2.5, creditsY+1730);
  text("Name", width/2.5, creditsY+1760);
  text("Name", width/2.5, creditsY+1790);
  text("Name", width/2.5, creditsY+1820);
  text("Name", width/2.5, creditsY+1850);

  text("Programmed in Processing", width/5, creditsY+2050);

  text("Final Project for 'Animationsprogrammierung'", width/5, creditsY+2150);
  text("in study course 'Digitale Medien'", width/5, creditsY+2180);
  text("taught by Prof. Dr. Jan-Torsten Milde", width/5, creditsY+2210);
  text("at 'Hochschule Fulda', Germany", width/5, creditsY+2240);

  text("© 2023 Joshua Schmidt. All rights reserved", width/2, creditsY+2340);

  creditsY -= 1;

  if (creditsY <= -1950) {

    textFont(abang, text);
    menuWidth = textWidth(menu);
    menuButton(-10, 370, menuWidth+30, menu, 10, 400, tr, tg, tb);
  }

  if (creditsY <= -2350) {

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
  }

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
}
