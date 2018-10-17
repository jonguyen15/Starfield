NormalParticle[] bob;
void setup()
{
  size(700,700);
  bob = new NormalParticle[250];
  for (int i= 0; i< bob.length;i++)
  {
   bob[i] = new NormalParticle();
  }
  bob[0] = new OddballParticle();
  bob[1] = new JumboParticle();
}
void draw()
{
  background(0);
  for (int i= 0; i< bob.length;i++)
  {
  bob[i].show();
  bob[i].move();
  }
}
class NormalParticle implements Particle
{
  double dX,dY,dSpeed,dAngle,myColor;
  NormalParticle()
  {
    dX = 350;
    dY = 350;
    dSpeed = Math.random()*1;
    dAngle = Math.random()*(2*PI);
    myColor = (int)(Math.random()*254);
  }
  public void move()
  {
    dX = dX + Math.cos(dAngle)*dSpeed;
    dY = dY + Math.sin(dAngle)*dSpeed;
  }
 public void show()
  {
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    ellipse((int)dX,(int)dY,5,5);
}
}
class OddballParticle implements Particle 
{
  double dSpeed,dAngle,myX,myY;
  OddballParticle()
  {
    myX = myY = 350;
    dSpeed = Math.random()*1;
    dAngle = Math.random()*(2*PI);
  }
  public void move()
    {
    myX = myX + Math.cos(dAngle)*dSpeed;
    myY = myY + Math.sin(dAngle)*dSpeed;
    }
  public void show()
  {
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    rect((int)myX+5,(int)myY+5,(int)myX-5,(int)myY-5);
  }
}
class JumboParticle extends NormalParticle
{
   void show()
  {
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    ellipse((int)dX,(int)dY,50,50);
  }
}
interface Particle
{
  public void move();
  public void show();
}


