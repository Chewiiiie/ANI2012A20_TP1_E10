void DrawGameOver () {

  fade (15);
  ps1.update();

  textFont(hallo);
  textSize(130);
  textAlign(CENTER, CENTER);
  fill(255, 127, 0);
  text("GAME OVER", width/2, 100);

  textFont(lora);
  textSize(60);
  text("ESPACE pour recommencer", 450, 500);
}
