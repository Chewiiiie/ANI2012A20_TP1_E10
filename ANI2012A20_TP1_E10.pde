static final int MENU = 0;
static final int JEU = 1;
static final int COMMANDES = 2;
int ecran = MENU;
Menu main;
Bouton boutonRetour;

Personnage ghost;
Sprite bat;
Sprite pumpkin;
Sprite candy;

int coordX_perso=0;
int coordY_perso=0;


Parallax fond2, fond3, fond4, fond5, fond6, fond7, fond8, fond9, fond10, fond11;
PImage fond1;


void setup() {
  size(900, 650);
  frameRate(25);

  main = new Menu();
  boutonRetour = new Bouton("", Bouton.FLECHE);

  coordX_perso= width/8;
  coordY_perso= height/8;

  ghost = new Personnage(coordX_perso, coordY_perso);

  bat = new Sprite();
  bat.SpriteSheetName ("Bat.png");
  bat.SpriteDimension (16, 13, 4);
  bat.SpriteOrigin (0, 0);
  bat.SpriteNumber (4, 1);
  bat.SpriteOffset (0, 0);
  bat.LoadSpriteSheet();

  pumpkin = new Sprite();
  pumpkin.SpriteSheetName ("Pumpkin.png");
  pumpkin.SpriteDimension (16, 16, 5);
  pumpkin.SpriteOrigin (0, 0);
  pumpkin.SpriteNumber (4, 1);
  pumpkin.SpriteOffset (0, 0);
  pumpkin.LoadSpriteSheet();

  candy = new Sprite();
  candy.SpriteSheetName ("Candy.png");
  candy.SpriteDimension (20, 20, 2);
  candy.SpriteOrigin (0, 0);
  candy.SpriteNumber (1, 1);
  candy.SpriteOffset (0, 0);
  candy.LoadSpriteSheet();


  fond1 = loadImage("Fond1.png");
  fond2 = new Parallax("Fond2.png", 1, height);
  fond3 = new Parallax("Fond3.png", 2, height);
  fond4 = new Parallax("Fond4Lights.png", 3, height);
  fond5 = new Parallax("Fond5.png", 4, height);
  fond6 = new Parallax("Fond6.png", 5, height);
  fond7 = new Parallax("Fond7Lights.png", 6, height);
  fond8 = new Parallax("Fond8.png", 7, height);
  fond9 = new Parallax("Fond9.png", 8, height);
  fond10 = new Parallax("Fond10.png", 9, height);
  fond11 = new Parallax("Fond11.png", 10, height);
}


void draw() {

  if (ecran == MENU)
    main.Render();

  else if (ecran == JEU) {
    if (frameCount>10) {
      ghost.Update();
      bat.Update();
      pumpkin.Update();
      candy.Update();

      frameCount=0;
    }

    fond2.Update();
    fond3.Update();
    fond4.Update();
    fond5.Update();
    fond6.Update();
    fond7.Update();
    fond8.Update();
    fond9.Update();
    fond10.Update();
    fond11.Update();

    image (fond1, 0, 0);
    fond2.Render();
    fond3.Render();
    fond4.Render();
    fond5.Render();
    fond6.Render();
    fond7.Render();
    fond8.Render();
    fond9.Render();
    fond10.Render();
    fond11.Render();

    ghost.Render();
    bat.Render(coordX_perso - 20, coordY_perso);
    pumpkin.Render(coordX_perso + 30, coordY_perso);
    candy.Render(coordX_perso, coordY_perso + 20);
  } else if (ecran == COMMANDES) {
    background (0);
    boutonRetour.Render();
  }
}

void keyPressed() {
  if (key == CODED) {
    ghost.Movement();
  }
}

void mousePressed() {
  if (mouseButton == LEFT && ecran == MENU) { 
    ecran = main.ButtonPress();
  }

  if (mouseButton == LEFT && ecran == COMMANDES) { 
    if (boutonRetour.CheckIn () == true)
      ecran = MENU;
  }
}
