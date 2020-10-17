Sprite ghost;
Sprite bat;
Sprite pumpkin;
Sprite candy;
int coordX_perso=0;
int coordY_perso=0;


void setup() {
  //changera
  size(320, 320);
  //changera
  imageMode(CENTER);

  coordX_perso= width/8;
  coordY_perso= height/8;

  ghost = new Sprite();
  ghost.SpriteSheetName ("Ghost.png");
  ghost.SpriteDimension (22, 23);
  ghost.SpriteOrigin (2, 17);
  ghost.SpriteNumber (3, 4);
  ghost.SpriteOffset (1, 2);
  ghost.LoadSpriteSheet();

  bat = new Sprite();
  bat.SpriteSheetName ("Bat.png");
  bat.SpriteDimension (16, 13);
  bat.SpriteOrigin (0, 0);
  bat.SpriteNumber (4, 1);
  bat.SpriteOffset (0, 0);
  bat.LoadSpriteSheet();

  pumpkin = new Sprite();
  pumpkin.SpriteSheetName ("Pumpkin.png");
  pumpkin.SpriteDimension (16, 16);
  pumpkin.SpriteOrigin (0, 0);
  pumpkin.SpriteNumber (4, 1);
  pumpkin.SpriteOffset (0, 0);
  pumpkin.LoadSpriteSheet();

  candy = new Sprite();
  candy.SpriteSheetName ("Candy.png");
  candy.SpriteDimension (20, 20);
  candy.SpriteOrigin (0, 0);
  candy.SpriteNumber (1, 1);
  candy.SpriteOffset (0, 0);
  candy.LoadSpriteSheet();
}


void draw() {
  background(150);

  scale (4);
  if (frameCount>10) {
    ghost.Update();
    bat.Update();
    pumpkin.Update();
    candy.Update();

    frameCount=0;
  }

  ghost.Render(coordX_perso, coordY_perso);
  bat.Render(coordX_perso - 20, coordY_perso);
  pumpkin.Render(coordX_perso + 30, coordY_perso);
  candy.Render(coordX_perso, coordY_perso + 20);
}
