Spaceship spaceBirb = new Spaceship();
Star [] arr = new Star[100];
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
ArrayList <Asteroid> rock = new ArrayList<Asteroid>();
public void setup() 
{
  size(500, 500);
  background(0);
  for(int i=0; i< arr.length; i++){
     arr[i]= new Star(); 
  }
  for(int i=0; i<20; i++){
     rock.add(new Asteroid()); 
  }
}
public void draw() 
{
 
   background(0);
    for(int i=0; i< bullets.size(); i++){
     bullets.get(i).move();
     bullets.get(i).show();
      
   }
     for(int i=0; i< rock.size(); i++){
      rock.get(i).move();
      rock.get(i).show();
      float d = dist((float)(spaceBirb.getX()),(float)(spaceBirb.getY()), (float)(rock.get(i).getRockX()),(float)(rock.get(i).getRockY()));
      if(d<10 ) 
        rock.remove(i);
   }
      for(int i=0;i< rock.size(); i++){
        for(int k=0; k< bullets.size(); k++){
          if((dist((float)(bullets.get(k).getBulletX()),(float)(bullets.get(k).getBulletY()), (float)(rock.get(i).getRockX()),(float)(rock.get(i).getRockY())))<10 ) {
            rock.remove(i);
            bullets.remove(k);
            break;
          }
        }
      }
  
  
  for(int i=0; i< arr.length; i++){
     arr[i].show(); 
  }
   spaceBirb.move();
  spaceBirb.show();
}

public void keyPressed(){
    if (key =='a')
      spaceBirb.turn(5);
    if(key == 'd')
       spaceBirb.turn(-5);
    if(key == 'w'){
      //spaceBirb.move();
      spaceBirb.accelerate(0.1);
    }
    if(key == 'h'){
      spaceBirb.setX(Math.random()*400);
      spaceBirb.setY(Math.random()*400);
      spaceBirb.setSpeed(0);
      spaceBirb.setDirection(Math.random()*360);
    }
    if(key == ' '){
      bullets.add(new Bullet(spaceBirb));
    }
}
