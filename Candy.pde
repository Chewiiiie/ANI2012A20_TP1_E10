class Candy extends Collectible {

  Candy() {
    super((width/2), 128+145, 1.5f);
    shape.SpriteSheetName ("Candy.png");
    shape.SpriteDimension (20, 20, 2);
    shape.SpriteOrigin (0, 0);
    shape.SpriteNumber (1, 1);
    shape.SpriteOffset (0, 0);
    shape.LoadSpriteSheet();
  }

  void Displacement() {
    super.Displacement();
  }

  void Update() {
    super.Update();
  }

  void Render() {
    super.Render();
  }

  void Collected(Personnage ghost) {
    if (enCollision == true) {
      ghost.AddBonbon();
      pickup.play();
    }
  }
}
