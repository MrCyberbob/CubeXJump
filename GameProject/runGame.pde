void runGame() {

  choose = false;
  
  menuMusic.stop();
  levelMusic.amp(0.8);
  
  noCursor();
  state = "game";

  movement();
  levels();
}
