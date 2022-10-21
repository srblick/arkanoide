class Block extends GameObject{
    private int typeItem;  // indica el tipo de Item, si es -1 no tien Item
    private int typeBlock;  // indica el tipo de bloque, si es -1 indica que no hay bloque
    private int resistance; // la resistencia del bloque cuantos golpes soporta
    private int puntajeOtorgado; // son los puntos que otorga cuando es destruido
    private PImage frames[];
    private AnimationManager animationManager;
    
    public Block(PVector position, PImage[] frames, int typeItem, int typeBlock) {
        super(position);
        this.frames = frames;
        this.typeItem = typeItem;
        this.typeBlock = typeBlock;
        animationManager = new AnimationManager();
        if (typeBlock < 9){
          this.resistance = 1;
          puntajeOtorgado = 100 + typeBlock * 20;
          animationManager.add(new Animation(new int[]{typeBlock}, 6, false));
        }else if (typeBlock == 9){
          this.resistance = 2;
          puntajeOtorgado = 100 + typeBlock * 20 * 2;
          animationManager.add(new Animation(new int[]{8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18}, 12, false));
        }else if (typeBlock == 19){
          this.resistance = 99;
          puntajeOtorgado = 0;
          animationManager.add(new Animation(new int[]{19, 20, 21, 22, 23, 24, 25, 26, 27, 28}, 11, false));
        }
    }

    public void display(){
      println(animationManager.frameActual()+"block");
//      image(frames[animationManager.frameActual()], this.position.x - 1, this.position.y - 1);
    }
    
    public boolean contieneItem(){
        return this.typeItem != 0;    
    }

    public void setTypeItem(int typeItem){
        this.typeItem = typeItem;    
    }
    public int getTypeItem(){
        return this.typeItem;    
    }
 /*   public void setEsIndestruible(boolean esIndestruible){
        this.esIndestruible = esIndestruible;    
    }
    public boolean getEsIndestruible(){
        return this.esIndestruible;    
    }*/
    public void setTypeBlock(int typeBlock){
        this.typeBlock = typeBlock;    
    }
    public int getTypeBlock(){
        return this.typeBlock;    
    }
}
