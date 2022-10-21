ListBlocks blocks;
int[][] mapa1 = new int[][] { 
    {0, 1, 2, 3, 4, 0, 5, 6, 7, 8, 0},
    {0, 2, 3, 4, 1, 0, 6, 7, 8, 5, 0},
    {0, 3, 4, 1, 2, 0, 7, 8, 5, 6, 0},
    {0, 4, 1, 2, 3, 0, 8, 5, 6, 7, 0},
    {0, 1, 2, 3, 4, 0, 5, 6, 7, 8, 0},
    {0, 9, 9, 9, 9, 0, 9, 9, 9, 9, 0},
  };

public void settings() {
    size((Const.ANCHO * Const.TAMANIO_DE_BLOQUE), (Const.ALTO * Const.TAMANIO_DE_BLOQUE));
}

void setup(){
    noFill();
    blocks = new ListBlocks(mapa1);
}

void draw(){
    background(0, 173, 0);
    blocks.display();
}
