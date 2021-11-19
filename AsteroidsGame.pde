Spaceship yWing = new Spaceship();
Star [] arr = new Star[100];
public void setup() 
{
  size(500, 500);
  background(0);
  for(int i=0; i< arr.length; i++){
     arr[i]= new Star(); 
  }
}
public void draw() 
{
   background(0);
  for(int i=0; i< arr.length; i++){
     arr[i].show(); 
  }
  yWing.show();
  yWing.move();
}

public void keyPressed(){
    if (key =='a')
      yWing.turn(5);
    if(key == 'd')
       yWing.turn(-5);
    if(key == ' ')
      yWing.move();
      yWing.accelerate(0.1);
    if(key == 'h'){
      yWing.setX(Math.random()*500);
      yWing.setY(Math.random()*500);
      yWing.setSpeed(0);
      yWing.setDirection(Math.random()*360);
    }
}
