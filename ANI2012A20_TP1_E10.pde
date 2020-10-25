//ANI2012A20_TP1_E10 - Travail Pratique 1
//Solène CHEVOLEAU - "A Little Halloween Adventure"

void setup() {
  size(900, 650);
  surface.setTitle("A Little Halloween Adventure");
  surface.setResizable(false);
  frameRate(30);

  InitOutils();
  InitSon();
  InitBackground();
  InitEcranCommandes();
  InitMainMenu();
  InitAgents();
  InitParticles();
}


void draw() {

  switch (ecran) {
  case MENU : 
    main.Render();
    break;
  case VICTOIRE : 
    DrawVictoire();
    break;
  case GAMEOVER : 
    DrawGameOver();
    break;
  case INTRO : 
    DrawIntro();
    break;
  case COMMANDES :
    DrawEcranCommandes();
    break;
  case JEU :
    GameLoop();
    break;
  }
}

void keyPressed() {
  if (ecran == JEU && key == CODED) 
    ghost.Movement();
  else if (ecran == INTRO || ecran == GAMEOVER) {
    if (key == ' ')
      ecran = JEU;
  }
}

void mousePressed() {
  if (ecran == MENU && mouseButton == LEFT ) { 
    ecran = main.ButtonPress();
    if (main.CheckButSound () == true) {
      v = v == 1f ? 0.0f : 1f ;
      s.volume(v);
    }
  } else if (ecran == COMMANDES && mouseButton == LEFT) { 
    if (boutonRetour.CheckIn () == true)
      ecran = MENU;
  }
}
