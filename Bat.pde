//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

Bat b1;

class Bat extends Monstre {

  Bat() {
    super((width/4), 128 - 60, 1, 128 - 80);
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
