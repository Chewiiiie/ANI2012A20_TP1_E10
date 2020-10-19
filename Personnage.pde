class Personnage {

  private Sprite shape;
  private int coordX_perso;
  private int coordY_perso;


  Personnage (int originX, int originY) {
    shape = new Sprite();
    shape.SpriteSheetName ("Ghost.png");
    shape.SpriteDimension (22, 23, 4);
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
      if (coordX_perso > 0)
        coordX_perso += - 1;
      break;
    case RIGHT :
      if ((coordX_perso + shape.spriteWidth) * shape.sizeFactor < width)
        coordX_perso += 1;
      break;
    case UP :
      if (coordY_perso > 0)
        coordY_perso += - 1;
      break;
    case DOWN :
      if ((coordY_perso + shape.spriteHeight) * shape.sizeFactor < height)
        coordY_perso += 1;
      break;
    }
  }
}
