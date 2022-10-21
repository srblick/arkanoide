class ListBlocks{
  private ArrayList<Block> blocks;
  private Sprite spritesBlock;
  
  public ListBlocks(int mapa[][]){
    spritesBlock = new Sprite("data/img/blocks.png", 29, 58, 36);
    blocks = new ArrayList<Block>();
    println(mapa.length, mapa[0].length);
    for(int i = mapa.length - 1; i >= 0 ; i--){
       for(int j = mapa[i].length -1 ; j >= 0; j--){
         if (mapa[i][j] != 0){ //<>//
           blocks.add(new Block(new PVector(22 + j * 44, 11 + i * 22), spritesBlock.getFrames(), 0, mapa[i][j] - 1));
           
         }
         print(mapa[i][j]);
       }
       println();
    }
  }
  
  public void display(){
    for (int i = blocks.size()-1; i >= 0; i--) { 
      blocks.get(i).display();
    }  
  }
}
