class Asteroid extends Floater{
  protected double rotSpeed;
  public Asteroid(){
       corners = 5;
       xCorners = new int[corners];
       yCorners = new int[corners];
       xCorners[0]= -10;
       yCorners[0]= 10;
       xCorners[1]= 0;
       yCorners[1]= (int)(Math.random()*3)+12;
       xCorners[2]= (int)(Math.random()*3)+18;
       yCorners[2]=6;
       xCorners[3]=8;
       yCorners[3]=-8;
       xCorners[4]=-8;
       yCorners[4]=-4;
       myCenterX=(double)(Math.random()*400);
       myCenterY=(double)(Math.random()*400);
       myColor=100;
       myXspeed=(double)(Math.random()*5)-2;
       myYspeed=(double)(Math.random()*5)-2;
       myPointDirection=0;
       rotSpeed = (double)(Math.random()*5)-2;
   }
   public void move() {
       turn(rotSpeed);
       super.move();
   }
    double getRockX(){
      return myCenterX;
    }
    double getRockY(){
      return myCenterY;
    }
    
}
