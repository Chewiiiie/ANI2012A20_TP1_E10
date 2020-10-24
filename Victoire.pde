

void DrawVictoire () {

  background (0);

  textSize(70);
  textFont(hallo);
  textAlign(CENTER, CENTER);
  fill(255, 127, 0);
  text("VICTOIRE", width/2, 100);
  textSize(60);
  textFont(lora);
  text("Merci d'avoir aidé Ghost à retrouver les bonbons !", width/2, 300);
  text("Joyeux Halloween !", width/2, 350);

  if (frameCount > 10) {
    ghost.Update();
    frameCount=0;
  }

  ghost.Render();
}
