static final int MENU = 0;
static final int JEU = 1;
static final int COMMANDES = 2;
static final int INTRO = 3;
static final int VICTOIRE = 4;
static final int GAMEOVER = 5;

int ecran = MENU;

PFont lora, hallo;

void InitOutils() {
  lora = createFont("Lora-VariableFont_wght.ttf", 50);
  hallo = createFont("HalloWitchZ.ttf", 50);
}
