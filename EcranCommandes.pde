Bouton boutonRetour;

PImage fondCommandes;

void InitEcranCommandes() {
  boutonRetour = new Bouton("", Bouton.FLECHE);

  fondCommandes = loadImage("Commandes.png");
}

void DrawEcranCommandes() {
  image(fondCommandes, 0, 0);
  textFont(hallo);
  textSize(80);
  textAlign(CENTER, CENTER);
  fill(255, 127, 0);
  text("Commandes", width/2, 70);

  textFont(lora);
  textAlign(CENTER, CENTER);
  textSize(22);
  fill(255, 127, 0);
  text("OBJECTIF : Attraper 5 bonbons pour obtenir la victoire en évitant les citrouilles.", 450, 450);
  boutonRetour.Render();
}
