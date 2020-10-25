//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

class LeftRunner {
  protected Sprite shape;
  protected float coordX, coordY;
  private int originX, originY, maxY;
  private float speed;
  boolean enCollision;

  LeftRunner(int x, int y, float s) {
    coordX = originX = x; 
    coordY = originY = maxY = y;
    speed = s;

    shape = new Sprite();
  }


  LeftRunner(int x, int y, float s, int mY) {
    coordX = originX = x; 
    coordY = originY = y;
    maxY = mY;
    speed = s;

    shape = new Sprite();
  }


  void Displacement() {
    coordX -= speed;
    if (coordX <= 0 || coordX >= originX) {
      coordX = originX;
      coordY = random((float) maxY, (float)originY);
    }
  }


  void Update() {
    shape.Update();
  }


  void Render() {
    shape.Render(coordX, coordY);
  }


  void Collision(Personnage p) {
    if (coordX > width/2)
      return;

    // Récupération du facteur d'agrandissement
    float pSF = p.GetShape().GetSizeFactor();    // Personnage
    float lrSF = shape.GetSizeFactor();          // Monstre actuel

    // Récupération coordonnées
    float pX = p.GetCoordX();  // Personnage
    float pY = p.GetCoordY();  // Personnage
    float lrX = coordX;             // Monstre actuel
    float lrY = coordY;             // Monstre actuel

    // Récupération taille avatar
    float pW = p.GetShape().spriteWidth;    // Personnage
    float pH = p.GetShape().spriteHeight;   // Personnage
    float lrW = shape.spriteWidth;          // Monstre actuel
    float lrH = shape.spriteHeight;         // Monstre actuel

    // Calcul des points...
    float pLarg = (pX + pW) * pSF;          // ...En haut à droite du personnage
    float pHaut = (pY + pH) * pSF;          // ...En bas à gauche du personnage
    float lrLarg = (lrX + lrW) * lrSF;      // ...En haut à droite du monstre actuel
    float lrHaut = (lrY + lrH) * lrSF;      // ...En bas à gauche du monstre actuel

    // Un des points du monstre est-il dans le personnage ?
    boolean a = (pX * pSF <= lrX * lrSF && pLarg >= lrX * lrSF);
    boolean b = (pY * pSF <= lrY * lrSF && pHaut >= lrY * lrSF);
    boolean c = (pX * pSF <= lrLarg && pLarg >= lrLarg);
    boolean d = (pY * pSF <= lrHaut && pHaut >= lrHaut);

    // Si oui, déplace le monstre au départ
    if ((a && b) || (c && b) || (c && d) || (a && d)) {
      coordX = originX + 10;
      enCollision = true;
    }
    else enCollision = false;
  }
}
