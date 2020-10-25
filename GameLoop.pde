//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

void GameLoop() {
  DrawBackground ();
  UpdateSprites();
  GestionAgents();
  DrawAgents();
  CheckVictory();
}
