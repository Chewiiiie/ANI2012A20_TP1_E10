Sprite ghost;
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
}


void draw() {
  background(150);

  scale (4);
  if (frameCount>10) {
    ghost.Update();

    frameCount=0;
  }

  ghost.Render(coordX_perso, coordY_perso);
}
