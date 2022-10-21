class Sprite{
  protected PImage[] frames;
  private String url;
  private int leng;
  private int alto;
  private int ancho;
  
  public Sprite(String url, int leng, int ancho, int alto){
    this.url = url;
    this.leng = leng;
    this.alto = alto;
    this.ancho = ancho;
    cargarFrames();
  }
  
  public void cargarFrames(){
    this.frames = new PImage[this.leng];
    PImage aux = loadImage(this.url);    
    for(int i=0; i<this.leng; i++){
      this.frames[i] = aux.get(i*this.ancho%aux.width,((i*this.ancho)/aux.width)*this.alto, this.ancho, this.alto);
      this.frames[i].resize(this.ancho*width/1088, this.alto*height/832);
    }
    this.ancho = this.ancho*width/1088;
    this.alto = this.alto*height/832;
  }

  public int getAlto(){
    return this.alto;
  }  
  public int getAncho(){
    return this.ancho;
  }  
  public void setAlto(int alto){
    this.alto = alto;
  }  
  public void setAncho(int ancho){
    this.ancho = ancho;
  }  
  public PImage[] getFrames(){
    return this.frames;
  }
  public void setFrames(PImage[] frames){
    this.frames = frames;
  }
  
}
