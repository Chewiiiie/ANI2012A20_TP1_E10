//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

Personnage ghost;

int coordX_perso = 0;
int coordY_perso = 128;

void CheckVictory() {
  if (ghost.Victoire()) {
    ecran = VICTOIRE;
    tint(0, 0, 0, 50);
    filter(BLUR, 6);
    image(imgVictory, 0, 0);
    noTint();
  }
}


class Personnage {
  // Avatar
  private Sprite shape;

  // Coordonées X et Y
  private float coordX_perso;
  private float coordY_perso;

  // Gestion du saut
  private boolean enSaut = false;
  private boolean enMonte = false;
  private int floor;
  private int ceil;
  final private float jumpSpeed = 2.0f;

  // Vitesse déplacement horizontal
  final private float hSpeed = 1.5f;

  // Nombre de bonbons ramassés
  private int nbrBonbon;

  // Constructeur de personnage par défaut
  Personnage (int originX, int originY) {
    // Création de l'avatar
    shape = new Sprite();
    shape.SpriteSheetName ("Ghost.png");
    shape.SpriteDimension (20, 18, 4);
    shape.SpriteOrigin (3, 17);
    shape.SpriteNumber (3, 4);
    shape.SpriteOffset (3, 7);
    shape.LoadSpriteSheet();

    // Nouvelles coordonnées
    coordX_perso = originX;
    coordY_perso = originY;
    floor = originY;
    ceil = floor - 40;

    // Nombre de bonbons amassés au démarrage
    nbrBonbon = 0;
  }

  void Displacement() {
    if (enSaut == true) {
      if (coordY_perso > ceil && enMonte)
        coordY_perso -= jumpSpeed;
      else {
        coordY_perso += jumpSpeed;
        enMonte = false;

        if (coordY_perso >= floor) {
          coordY_perso = floor;
          enSaut = false;
        }
      }
    }
  }

  void Update () {
    shape.Update();
  }


  void Render () {
    shape.Render(coordX_perso, coordY_perso);

    fill(0);
    textFont(lora);
    textSize(32);
    textAlign(LEFT, TOP);
    String msg = "BONBON " + nbrBonbon;
    text(msg, 0, 0);
  }


  void Movement () {
    switch (keyCode) {
    case LEFT : 
      if (coordX_perso > 0)
        coordX_perso -= hSpeed;
      break;
    case RIGHT :
      if ((coordX_perso + shape.spriteWidth) * shape.sizeFactor < width/2)
        coordX_perso += hSpeed;
      break;
    case UP :
      if (coordY_perso > 0 && enSaut == false)
        enSaut = enMonte = true;
      break;
    }
  }

  float GetCoordX() {
    return coordX_perso;
  }

  float GetCoordY() {
    return coordY_perso;
  }

  Sprite GetShape() {
    return shape;
  }

  void AddBonbon() {
    nbrBonbon += 1;
  }

  boolean Victoire() {
    if (nbrBonbon == 5) {
      saveFrame("victory.png");
      imgVictory = loadImage("victory.png");
      jingleWin.play();

      return true;
    }
    return false;
  }
}
