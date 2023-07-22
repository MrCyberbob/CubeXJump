PFont abang, normal;

PImage wall, hole, cracks, cubes, forest, river, sunset, forest2, night, night2, fog, dawn, cave, entrance;

import processing.sound.*;
SoundFile menuMusic, levelMusic, death, nextLevel, gameOver, water, lastLevel, heart, creditSong;

void setup() {

  size(1280, 640);
  surface.setTitle("Cube x Jump, by Mr_Cyberbob");
  surface.setLocation(width/2, height/2);

  abang = createFont("../fonts/Abang.otf", 100);
  normal = createFont("Verdana", text);

  // pictures from pixabay.com
  wall = loadImage("../pictures/wall.jpg");
  hole = loadImage("../pictures/hole.jpg");
  cracks = loadImage("../pictures/cracks.png");
  cubes = loadImage("../pictures/cubes.png");
  forest = loadImage("../pictures/forest.png");
  river = loadImage("../pictures/river.png");
  sunset = loadImage("../pictures/sunset.png");
  forest2 = loadImage("../pictures/forest2.png");
  night = loadImage("../pictures/night.png");
  night2 = loadImage("../pictures/night2.png");
  fog = loadImage("../pictures/fog.jpg");
  dawn = loadImage("../pictures/dawn.png");
  cave = loadImage("../pictures/cave.png");
  entrance = loadImage("../pictures/entrance.jpg");

  // menu music: Morning Accept by Hello Meteor (remixed by me)
  menuMusic = new SoundFile(this, "../music/MenuMusic.wav");

  // level music: Take Off by Olexandr Ignatov (remixed by me)
  levelMusic = new SoundFile(this, "../music/LevelMusic.wav");

  // last level music: Worlds Apart by Pawel Morytko (remixed by me)
  lastLevel = new SoundFile(this, "../music/LastLevel.wav");

  // game over music: She is the Night by Digital Sadness (remixed by me)
  gameOver = new SoundFile(this, "../music/GameOver.wav");

  // victory music: Young and Free by Victorious SECRT
  creditSong = new SoundFile(this, "../music/credits.mp3");

  // soundfiles from freesound.org and pixabay.com
  death = new SoundFile(this, "../music/death_sound.wav");
  nextLevel = new SoundFile(this, "../music/next_level.wav");
  water = new SoundFile(this, "../music/water.wav");
  heart = new SoundFile(this, "../music/heart.wav");
}

void draw() {

  if (state.equals("game")) {
    if (!levelMusic.isPlaying()) {
      levelMusic.amp(0.8);
      levelMusic.play();
    }

    if (whichLevel > 7 && whichLevel < 10) {
      if (!water.isPlaying()) {
        water.play();
      }
    }
  } else if (state.equals("gameOver")) {
    if (!gameOver.isPlaying()) {
      gameOver.play();
    }
  } else if (state.equals("credits")) {
    if (!creditSong.isPlaying()) {
      creditSong.amp(0.8);
      creditSong.play();
    }
  } else {
    if (!menuMusic.isPlaying()) {
      menuMusic.play();
    }
  }

  background(bgr, bgg, bgb);

  // menu screen + game
  switch(state) {
  case "menu":
    runMenu();
    break;

  case "controls":
    runControls();
    break;

  case "colors":
    runColors();
    break;

  case "game":
    runGame();
    break;

  case "gameOver":
    gameOver();
    break;

  case "credits":
    credits();
    break;
  }
}
