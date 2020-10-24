class LeftRunner {
  protected Sprite shape;
  protected int coordX, coordY;
  private int originX, originY, maxY;
  private int speed;
  boolean enCollision;

  LeftRunner(int x, int y, int s) {
    coordX = originX = x; 
    coordY = originY = maxY = y;
    speed = s;

    shape = new Sprite();
  }


  LeftRunner(int x, int y, int s, int mY) {
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
      coordY = (int) random((float) maxY, (float)originY);
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
    int pSF = p.GetShape().GetSizeFactor();    // Personnage
    int lrSF = shape.GetSizeFactor();          // Monstre actuel

    // Récupération coordonnées
    int pX = (int)p.GetCoordX();  // Personnage
    int pY = (int)p.GetCoordY();  // Personnage
    int lrX = coordX;             // Monstre actuel
    int lrY = coordY;             // Monstre actuel

    // Récupération taille avatar
    int pW = p.GetShape().spriteWidth;    // Personnage
    int pH = p.GetShape().spriteHeight;   // Personnage
    int lrW = shape.spriteWidth;          // Monstre actuel
    int lrH = shape.spriteHeight;         // Monstre actuel

    // Calcul des points...
    int pLarg = (pX + pW) * pSF;          // ...En haut à droite du personnage
    int pHaut = (pY + pH) * pSF;          // ...En bas à gauche du personnage
    int lrLarg = (lrX + lrW) * lrSF;      // ...En haut à droite du monstre actuel
    int lrHaut = (lrY + lrH) * lrSF;      // ...En bas à gauche du monstre actuel

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
