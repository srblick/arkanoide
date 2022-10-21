public class AnimationManager{
//  protected PImage[] frames;
  private int frameActual;
  private int animationActual;
  private ArrayList<Animation> animations;
  
  public AnimationManager(){
//    this.frames = frames;
    this.animationActual = 0;
    this.animations = new ArrayList<Animation>();
  }

  public void add(Animation animation){
    animations.add(animation);
  }
  
  public int frameActual(){
//    this.frameActual = this.animations.get(this.animacionActual).animate();
    return this.animations.get(this.animationActual).animate();
  }

  public void setFrameActual(int frameActual){
    this.frameActual = frameActual;
  }  
  public int getFrameActual(){
    return this.frameActual;
  }  
/*  public PImage setFrame(int frame){
    return this.frames[frame];
  }
/*  public Animation animationActual(){
    return this.animations.get(this.animacionActual);
  }*/
}
