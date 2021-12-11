class Bullet extends Floater{
    public Bullet (Spaceship ship){
      myCenterX = ship.getX();
      myCenterY = ship.getY();
      myPointDirection = ship.getDirection();
      accelerate(5);
    }
    public void move(){
      myCenterX += myXspeed;    
      myCenterY += myYspeed;    
    }
    public void show(){
     noStroke();
     fill(0,255,0);
     ellipse((float)myCenterX, (float)myCenterY, 10, 10); 
     
    }
    public double getBulletX(){return myCenterX;}
    public double getBulletY() {return myCenterY;}
      
    
}//end of class
