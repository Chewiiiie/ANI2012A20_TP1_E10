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
