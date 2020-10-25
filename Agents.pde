void InitAgents() {
  ghost = new Personnage(coordX_perso, coordY_perso);

  b1 = new Bat();
  p1 = new Pumpkin();
  c1 = new Candy();
}

// Player + Monsters + Candy
// Mise à jour de la section de la sprite sheet à afficher
void UpdateSprites() {
  if (frameCount > 10) {
    ghost.Update();
    b1.Update();
    p1.Update();
    c1.Update();
    frameCount=0;
  }
}

void GestionAgents() {
  // Déplacements
  ghost.Displacement();
  b1.Displacement();
  p1.Displacement();
  c1.Displacement();

  // Vérification des collisions
  b1.Collision(ghost);
  p1.Collision(ghost);
  c1.Collision(ghost);

  c1.Collected(ghost);
  p1.Touched();
}

void DrawAgents() {
  // Affichage
  b1.Render();
  c1.Render();
  p1.Render();
  ghost.Render();
}
