abstract class GameObject{
  protected PVector position;
  private boolean isDead;
  
  public GameObject(){
    this.position = new PVector();
  }
  public GameObject(PVector position){
    this.position = position;
  }
  public void setPosition(PVector position){
    this.position = position;
  }
  public PVector getPosition(){
    return this.position;
  }
  abstract void display();
}
