public class Animation{
    private int[] frames; // guarda los fotogramas de la animacion
    private int frame; // indica en que parte de la animacion esta
    private boolean loop;  // indica si se repite indefinidamente
    private boolean end;  // indica si termino la animacion cuando loop es false
    private boolean stop; // indica si la animacion esta detenida
    private int framesPorSegundo;  // indica cuantos fotogramas  por segundo se muestran


    public Animation (int[] frames, int framesPorSegundo, boolean loop) {
        this.frames = frames;
        this.loop = loop;
        this.end = false;
        this.frame = 0;
        this.framesPorSegundo = framesPorSegundo;
        this.stop = false;
    }

    public int animate(){
        println(this.frame+"solo");
        if(this.frames.length == 1){
        println(this.frame+"=1");
          return this.frames[this.frame];
        }
        if (this.stop){
        println(this.frame+"stop");
            return this.frames[this.frame];
        }else if (!this.end && cambiarFrame()){
            this.frame++;
        println(this.frame+"++");
        }
        if (this.frame == (this.frames.length - 1) && !this.loop){
            this.end = true;
        println(this.frame+"end");
        }else {
            this.frame = this.frame % this.frames.length;
        println(this.frame+"%");
        }
        return this.frames[this.frame];
    }

    public void play(){
        this.stop = false;
    }
    public void stop(){
        this.stop = true;
        this.frame = 0;
    }
    public boolean cambiarFrame(){
      return (frameCount % round(frameRate / this.framesPorSegundo)==0);
    }
    
    public boolean isEnd(){
      return this.end;
    }
    public void setEnd(boolean end){
      this.end = end;
    }

}
