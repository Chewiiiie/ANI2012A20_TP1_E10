//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

void DrawGameOver () {

  fade (15);
  ps1.update();

  textFont(hallo);
  textSize(90);
  textAlign(CENTER, CENTER);
  fill(255, 127, 0);
  text("Vous avez pris un mauvais coup", width/2, 100);

  textFont(lora);
  textSize(40);
  text("ESPACE pour reprendre", 450, 500);
}
