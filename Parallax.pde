//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

PImage fond1;
Parallax fond2, fond3, fond4, fond5, fond6, fond7, fond8, fond9, fond10, fond11;

void InitBackground() {
  fond1 = loadImage("Fond1.png");
  fond2 = new Parallax("Fond2.png", 1, height);
  fond3 = new Parallax("Fond3.png", 2, height);
  fond4 = new Parallax("Fond4Lights.png", 3, height);
  fond5 = new Parallax("Fond5.png", 4, height);
  fond6 = new Parallax("Fond6.png", 5, height);
  fond7 = new Parallax("Fond7Lights.png", 6, height);
  fond8 = new Parallax("Fond8.png", 7, height);
  fond9 = new Parallax("Fond9.png", 8, height);
  fond10 = new Parallax("Fond10.png", 9, height);
  fond11 = new Parallax("Fond11.png", 10, height);
}

void DrawBackground () {
  // Paralax Background
  fond2.Update();
  fond3.Update();
  fond4.Update();
  fond5.Update();
  fond6.Update();
  fond7.Update();
  fond8.Update();
  fond9.Update();
  fond10.Update();
  fond11.Update();

  image (fond1, 0, 0);
  fond2.Render();
  fond3.Render();
  fond4.Render();
  fond5.Render();
  fond6.Render();
  fond7.Render();
  fond8.Render();
  fond9.Render();
  fond10.Render();
  fond11.Render();
}

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
