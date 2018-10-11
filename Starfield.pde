NormalParticle[] bob;
void setup()
{
  size(700,700);
  bob = new NormalParticle[1000];
  for (int i= 0; i< bob.length;i++)
   bob[i] = new NormalParticle();
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
class NormalParticle
{
  double dX,dY,dSpeed,dAngle;
  NormalParticle()
  {
    dX = 350;
    dY = 350;
    dSpeed = Math.random()*1;
    dAngle = Math.random()*(2*PI);
  }
  void move()
  {
    dX = dX + Math.cos(dAngle)*dSpeed;
    dY = dY + Math.sin(dAngle)*dSpeed;
  }
  void show()
  {
    ellipse((int)dX,(int)dY,5,5);
}
//interface Particle
{
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
}

