class Pumpkin extends Monstre {

  Pumpkin() {
    super((width/5), 128 - 25, 10);
    shape.SpriteSheetName ("Pumpkin.png");
    shape.SpriteDimension (16, 16, 5);
    shape.SpriteOrigin (0, 0);
    shape.SpriteNumber (4, 1);
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