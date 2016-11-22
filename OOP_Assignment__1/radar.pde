class Radar
{
  float radius = 100;
  float speed = 0.01;
  float theta = 0;
  int trailLength = 100;
  float cx,cy;
  
  Radar(float x, float y, float radius, float speed)
  {
   this.speed = speed;
   cx = x;
   cy = y;
   this.radius = radius;
   this.speed = speed;
  }
  
}