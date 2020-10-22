class Candy extends Collectible {

  Candy() {
    super((width/2), 128-145, 1);
    candy.SpriteSheetName ("Candy.png");
    candy.SpriteDimension (20, 20, 2);
    candy.SpriteOrigin (0, 0);
    candy.SpriteNumber (1, 1);
    candy.SpriteOffset (0, 0);
    candy.LoadSpriteSheet();
  }

  void Update() {
    super.Update();
  }

  void Render() {
    super.Render();
  }
}
