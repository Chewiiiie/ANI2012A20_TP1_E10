class LeftRunner {
  protected Sprite shape;
  protected int coordX, coordY;
  protected int originX;
  protected int speed;

  LeftRunner(int x, int y, int s) {
    coordX = originX = x; 
    coordY = y;
    speed = s;

    shape = new Sprite();
  }

  void Update() {
    coordX -= speed;
    if (coordX <= 0)
      coordX = originX;
  }

  void Render() {
    shape.Render(coordX, coordY);
  }
}
