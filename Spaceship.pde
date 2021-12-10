class Spaceship extends Floater  
{   
    public Spaceship() {
      corners =10;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0]= -5;
      yCorners[0]=3;
      xCorners[1] = -2;
      yCorners[1]= 15;
      xCorners[2] = 1;
      yCorners[2]= 15;
      xCorners[3] = 8;
      yCorners[3]= 5;
      xCorners[4]= 30;
      yCorners[4]= 2;
      xCorners[5]= 30;
      yCorners[5] = -2; 
      xCorners[6] = 8;
      yCorners[6]= -5;
      xCorners[7] = 1;
      yCorners[7]= -15;
      xCorners[8] = -2;
      yCorners[8]= -15;
      xCorners[9]= -5;
      yCorners[9]=-3;
      myCenterX = 250;
      myCenterY = 250;
      myColor= 255;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection =0;
    }
    public void setX(double reset){
       myCenterX = reset;
    }
    public void setY(double reset){
       myCenterY = reset;
    }
    public void setSpeed(double reset){
       myXspeed =  reset;
       myYspeed = reset;
    }
    public void setDirection(double reset){
       myPointDirection = reset;
    }
    double getX(){
      return myCenterX;
    }
    double getY(){
      return myCenterY;
    }
    double getDirection(){
      return myPointDirection;
    }
    
}
