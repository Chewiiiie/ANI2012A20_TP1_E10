PFont lora, hallo;

int savedTime = millis();
int interval = 2000;

void DrawIntro () {

  background (0);

  lora = createFont("Lora-VariableFont_wght.ttf", 22);
  textFont(lora);
  textAlign(CENTER, CENTER);
  fill(255);
  text("Ghost doit se rendre a une fête d'Halloween chez son amie Witchie la petite sorcière.", 450, 150);
  text("Il lui a promis de rapporter des bonbons fait-maison pour cette grande soirée.", 450, 200);
  text("Sur la route du manoir de la petite sorcière, de vilaines chauves-souris", 450, 250);
  text( "Et de sournoises citrouilles lui ont pique ses bonbons et les ont éparpilles dans la forêt.", 450, 300);
  text( "Ghost est déterminé a récupérer ses friandises.", 450, 350);
  text( "Attention a ne pas entrer en collision avec ces monstres !", 450, 400);


  hallo = createFont("HalloWitchZ.ttf", 50);
  textFont(hallo);
  int elapsed = millis() - savedTime;
  if ( elapsed < 500 ) {
    fill(0);
    text("appuyer sur ESPACE", 450, 500);
  } else {
    fill(223, 109, 20);
    text("appuyer sur ESPACE", 450, 500);
  }
  // Redémarrer le compteur chaque seconde ( interval = 1000 )
  if ( elapsed > interval ) {
    savedTime = savedTime + interval;
  }
}
