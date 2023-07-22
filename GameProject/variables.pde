float r = 50;
float g = 50;
float b = 50;

float tempR = 50;
float tempG = 50;
float tempB = 50;

float bgr = r+55;
float bgg = r+55;
float bgb = r+55;

float tr = r;
float tg = g;
float tb = b;

String state = "menu";

float playerX = width-100;
float playerY = 500;
float playerVelocityY = 0;
float playerVelocityX = 0;
float playerSpeed = 4;
float playerJumpSpeed = -5;
float playerSize = 20;
float upKey;
float rightKey;
float leftKey;
float gravity = .3;
int jumps = 0;

float spawnX;
float spawnY;

String continueGame = "| Continue Game |";
float continueWidth = 0;

String start = "| New Game |";
float startWidth = 0;

String controls = "| Controls |";
float controlsWidth = 0;

String colorPick = "| Choose a Color |";
float colorWidth = 0;

String quit = "| Quit Game |";
float quitWidth = 0;

String back = "| Go Back |";
float backWidth = 0;

String green = "| Green |";
float greenWidth = 0;

String red = "| Red |";
float redWidth = 0;

String blue = "| Blue |";
float blueWidth = 0;

String black = "| Standard |";
float blackWidth = 0;

String menu = "| Back to Menu |";
float menuWidth = 0;

String credits = "| Credits |";
float creditWidth = 0;

float text = 28;

int whichLevel = 0; 
int tempLevel = whichLevel;
int lives = 5;

float goalX = 0;
float goalY = 0;
float goalXstretch = 10;
float goalYstretch = 40;

float movingPlatX = 350;
float movingPlat2X = 800;
boolean moveRight = true;

float movingPlatY = 400;
boolean moveUp = true;

boolean choose = false;
boolean repeat = false;
boolean showPlat = false;

boolean heart1 = false;
boolean heart2 = false;
boolean heart3 = false;
boolean heart4 = false;

float creditsY = height-150;
boolean victory = false;
long wins = 0L;
