class Parallax {
  private PImage img;
  private PVector position;
  private PVector positionCopy;
  private Float vel;

  Parallax(String fileName, float velocity, int h) {
    img = loadImage(fileName);
    vel = velocity;
    position = new PVector(0, h - img.height);
    positionCopy = new PVector(img.width, h - img.height);
  }

  void Update() {
    position.sub(vel, 0, 0);
    positionCopy.sub(vel, 0, 0);

    if (position.x < -img.width)
      position.x = positionCopy.x + img.width;
    if (positionCopy.x < -img.width)
      positionCopy.x = position.x + img.width;
  }

  void Render() {
    image(img, position.x, position.y);
    image(img, position.x + img.width, position.y);
    image(img, positionCopy.x, positionCopy.y);
    image(img, positionCopy.x + img.width, positionCopy.y);
  }
}
