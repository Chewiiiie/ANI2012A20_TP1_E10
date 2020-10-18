class Personnage {

  private Sprite shape;
  private int coordX_perso;
  private int coordY_perso;


  Personnage (int originX, int originY) {
    shape = new Sprite();
    shape.SpriteSheetName ("Ghost.png");
    shape.SpriteDimension (22, 23);
    shape.SpriteOrigin (2, 17);
    shape.SpriteNumber (3, 4);
    shape.SpriteOffset (1, 2);
    shape.LoadSpriteSheet();
    coordX_perso = originX;
    coordY_perso = originY;
  }

  void Update () {
    shape.Update();
  }


  void Render () {
    shape.Render(coordX_perso, coordY_perso);
  }


  void Movement () {
    switch (keyCode) {
    case LEFT : 
      coordX_perso += - 1;
      break;
    case RIGHT :
      coordX_perso += 1;
      break;
    case UP :
      coordY_perso += - 1;
      break;
    case DOWN :
      coordY_perso += 1;
      break;
    }
  }
}
