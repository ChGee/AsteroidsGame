class Star //note that this class does NOT extend Floater
{
  //member varialbes 
  private int myX, myY, myColor, mySize;
  
  //constructer
  public Star(){
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     //myColor = (int)(Math.random()*256);
     mySize = 5;
  }
  
  //show
  public void show() {
    noStroke();
    fill((int)(Math.random()*256), (int)(Math.random()*256) , (int)(Math.random()*256));
    ellipse(myX, myY, mySize, mySize);
  }
}
