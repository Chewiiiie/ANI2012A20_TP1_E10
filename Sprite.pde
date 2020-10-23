class Sprite {
  //Correspond à ma Sprite Sheet
  private PImage[] spriteGrid;
  private PImage spriteSheet;
  private String sheetName;
  //Option pour le traitement de la sprite sheet
  int spriteWidth, spriteHeight;
  private int xOrigin, yOrigin;
  private int nWidth, nHeight;
  int xOffset, yOffset;
  private int sizeFactor;
  //Element logique
  private int index;

  Sprite() {
    //Dimension sprite
    spriteWidth = 0;
    spriteHeight = 0;
    //Emplacement du premier sprite sur la feuille
    xOrigin = 0;
    yOrigin = 0;
    //Nombre de sprite
    nWidth = 0;
    nHeight = 0; 
    //Espacement entre chaque sprite
    xOffset = 0;
    yOffset = 0;
    //Nom de la feuille
    sheetName = "";
    //Facteur pour la taille
    sizeFactor = 1;

    index = 0;
  }

  void LoadSpriteSheet() {
    spriteSheet = loadImage(sheetName);
    //Grille de sprite
    spriteGrid = new PImage[nHeight * nWidth];

    for (int y = 0; y < nHeight; y++) {
      for (int x = 0; x < nWidth; x++) {
        spriteGrid[y * (nHeight - 1) + x] = spriteSheet.get(x * spriteWidth + xOrigin + x * xOffset, 
          y * spriteHeight + yOrigin + y * yOffset, 
          spriteWidth, 
          spriteHeight);
      }
    }
  }

  void SpriteSheetName (String fileName) {
    sheetName = fileName;
  }

  //w et h n'a de valeur qu'entre les accolades
  void SpriteDimension(int w, int h) {
    spriteWidth = w;
    spriteHeight = h;
  }

  //w et h n'a de valeur qu'entre les accolades
  void SpriteDimension(int w, int h, int s) {
    spriteWidth = w;
    spriteHeight = h;
    sizeFactor = s;
  }

  void SpriteOrigin(int x, int y) {
    xOrigin = x;
    yOrigin = y;
  }

  void SpriteNumber (int w, int h) {
    nWidth = w;
    nHeight = h;
  }

  void SpriteOffset (int x, int y) {
    xOffset = x;
    yOffset = y;
  }

  void Update() {
    index = (index + 1 >= (nWidth * nHeight)) ? 0 : index + 1;
  }

  void Render (float x, float y) {
    pushMatrix();
    scale (sizeFactor);
    image (spriteGrid[index], x, y);
    popMatrix();
  }

  int GetSizeFactor() {
    return sizeFactor;
  }
}
