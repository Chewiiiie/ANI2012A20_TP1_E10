//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

Pumpkin p1;

class Pumpkin extends Monstre {

  Pumpkin() {
    super((width/5), 128 - 25, 1.8f);
    shape.SpriteSheetName ("Pumpkin.png");
    shape.SpriteDimension (16, 16, 5);
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

  void Touched () {
    if (enCollision == true) {
      ecran = GAMEOVER;
      disappear.play();
    }
  }
}
