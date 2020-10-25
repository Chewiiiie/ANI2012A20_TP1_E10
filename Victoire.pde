//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

PImage imgVictory;

void DrawVictoire () {

  textFont(hallo);
  textSize(100);
  textAlign(CENTER, CENTER);
  fill(255, 127, 0);
  text("VICTOIRE", width/2, 100);
  
  textFont(lora);
  textSize(30);
  text("Merci d'avoir aidé Ghost à retrouver les bonbons !", width/2, 300);
  text("Joyeux Halloween !", width/2, 350);
}
