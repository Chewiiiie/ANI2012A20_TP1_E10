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


  void Update() {
    coordX -= speed;
    if (coordX <= 0) {
      coordX = originX;
      coordY = (int) random((float) maxY, (float)originY);
    }
  }

  void Render() {
    shape.Render(coordX, coordY);
  }

  void Collision(Personnage p) {
    if (coordX > width/2)
      return;

    int pSF = p.GetShape().GetSizeFactor();
    int lrSF = shape.GetSizeFactor();

    int pX = p.GetCoordX();
    int pY = p.GetCoordY();

    int lrX = coordX; 
    int lrY = coordY;

    int pW = p.GetShape().spriteWidth;
    int pH = p.GetShape().spriteHeight;   
    int lrW = shape.spriteWidth;
    int lrH = shape.spriteHeight;

    int pLarg = (pX + pW) * pSF;
    int pHaut = (pY + pH) * pSF;

    int lrLarg = (lrX + lrW) * lrSF;
    int lrHaut = (lrY + lrH) * lrSF;

    boolean a = (pX * pSF <= lrX * lrSF && pLarg >= lrX * lrSF);
    boolean b = (pY * pSF <= lrY * lrSF && pHaut >= lrY * lrSF);
    boolean c = (pX * pSF <= lrLarg && pLarg >= lrLarg);
    boolean d = (pY * pSF <= lrHaut && pHaut >= lrHaut);

/*println ((a && b));
println ((c && b));
println ((c && d));
println ((a && d));
println ("");*/

    //if ((a && b) || (c && b) || (c && d) || (a && d))
    println(pX);
    println(lrLarg);
  }
}
