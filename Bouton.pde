//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

class Bouton {

  PImage img;

  static final int RECTANGLE = 1;
  static final int FLECHE = 3;

  private int coordX, coordY;
  private int wBouton, hBouton, rBouton;
  private int sizeTxt;
  private color cBouton;
  private String txt;
  private int shape;
  private boolean soundControl;

  Bouton (String txtStr, int s) {
    coordX = 0;
    coordY = 0;

    wBouton = 100;
    hBouton = 100;
    rBouton = 50;  

    cBouton = color(0);

    txt = txtStr;
    sizeTxt = 60;

    shape = s;

    img = new PImage();

    soundControl = false;
  }

  void Update() {
  }

  void Render() {
    pushMatrix();
    pushStyle();
    fill(255); 

    if (shape == RECTANGLE)
      rect(coordX, coordY, wBouton, hBouton);

    if (shape == FLECHE) {
      square(coordX, coordY, rBouton);
      fill(0);
      triangle(coordX, coordY + (rBouton/2), 
        coordX + (rBouton/2), coordY, 
        coordX + (rBouton/2), coordY + rBouton);

      strokeWeight(10);
      line(coordX + (rBouton/2), coordY + (rBouton/2), 
        coordX + (rBouton * 0.90), coordY + (rBouton/2));
      strokeWeight(1);
    }

    fill(cBouton);
    textAlign(CENTER, CENTER);
    textSize(sizeTxt);
    text(txt, coordX + (wBouton/2), coordY + (hBouton/4));
    noFill();

    imageMode(CENTER);
    image(img, coordX + (wBouton/2), coordY + (hBouton/2));

    if (v == 0 && soundControl) {
      fill(255, 0, 0, 70);
      rect(coordX, coordY, wBouton, hBouton);
    }
    popStyle();
    popMatrix();
  }

  void Position(int x, int y) {
    coordX = x;
    coordY = y;
  }

  void Size(int w, int h) {
    wBouton = w;
    hBouton = h;
  }

  void Size(int r) {
    rBouton = r;
    wBouton = r;
    hBouton = r;
  }

  boolean CheckIn() {
    switch(shape) {
    case FLECHE :
    case RECTANGLE : 
      if (mouseX > coordX && mouseX < coordX + wBouton && mouseY > coordY && mouseY < coordY + hBouton)
        return true;
    }

    return false;
  }

  void SetSoundControl(boolean active) {
    soundControl = active;
  }
}
