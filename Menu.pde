class Menu {
  Bouton bouton1;
  Bouton bouton2;
  Bouton bouton3;
  PFont font;



  Menu() {

    //Bouton pour lancer le jeu
    bouton1 = new Bouton ("Play", Bouton.RECTANGLE);
    bouton1.Position(250, 300);
    bouton1.Size(400, 100);

    bouton2 = new Bouton ("Commandes", Bouton.RECTANGLE);
    bouton2.Position(250, 450);
    bouton2.Size(400, 100);

    //Bouton "Son"
    bouton3 = new Bouton ("", Bouton.RECTANGLE);
    bouton3.Position(845, 25);
    bouton3.Size(30);
    bouton3.img = loadImage("SoundNote.png");
    bouton3.SetSoundControl(true);

    
    font = createFont("HalloWitchZ.ttf", 100);
  }

  void Render() {
    pushStyle();
    background(0);
    bouton1.Render();
    bouton2.Render();
    bouton3.Render();
    textFont(font);
    textAlign(CENTER, CENTER);
    fill(223, 109, 20);
    text("A Little Halloween Adventure", 450, 150);
    popStyle();
  }

  int ButtonPress() {
    if (bouton1.CheckIn () == true)
      return INTRO;

    if (bouton2.CheckIn () == true)
      return COMMANDES;

    return MENU;
  }

  boolean CheckButSound() {
    return bouton3.CheckIn ();
  }
}
