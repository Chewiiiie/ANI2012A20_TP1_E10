void DrawGameOver () {

  background (0);

  textFont(hallo);
  textSize(150);
  textAlign(CENTER, CENTER);
  fill(255, 127, 0);
  text("GAME OVER", width/2, 200);

  textFont(lora);
  textSize(60);
  text("ESPACE pour recommencer", 450, 500);
}
