class LeftRunner {
  protected Sprite shape;
  protected int coordX, coordY;
  private int originX, originY, maxY;
  private int speed;

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
}
