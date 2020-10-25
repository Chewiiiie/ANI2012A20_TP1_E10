void GameLoop() {
  DrawBackground ();
  UpdateSprites();
  GestionAgents();
  DrawAgents();
  CheckVictory();
}
