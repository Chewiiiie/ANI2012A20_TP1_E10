class Candy extends Collectible {

  Candy() {
    super((width/2), 128+145, 10);
    shape.SpriteSheetName ("Candy.png");
    shape.SpriteDimension (20, 20, 2);
    shape.SpriteOrigin (0, 0);
    shape.SpriteNumber (1, 1);
    shape.SpriteOffset (0, 0);
    shape.LoadSpriteSheet();
  }

  void Update() {
    super.Update();
  }

  void Render() {
    super.Render();
  }
}
