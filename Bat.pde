class Bat extends Monstre {

  Bat() {
    super((width/4), 128 - 20, 1, 128 - 40);
    shape.SpriteSheetName ("Bat.png");
    shape.SpriteDimension (16, 13, 4);
    shape.SpriteOrigin (0, 0);
    shape.SpriteNumber (4, 1);
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
}
