class Radar
{
  float radius = 100;
  float speed = 0.01;
  float theta = 0;
  int trailLength = 50;
  float cx, cy;
  
  Radar(float x, float y, float radius, float speed)
  {
   this.speed = speed;
   cx = x;
   cy = y;
   this.radius = radius;
   this.speed = speed;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    float intensityChange = 190.0f / trailLength;
    for(int i = 0 ; i < trailLength ; i ++)
    {
      float lineTheta = theta - (i * 0.01);
      stroke(0, 255 - (i * intensityChange), 0);
      
      float x = cx + sin(lineTheta) * radius - 1;
      float y = cy - cos(lineTheta) * radius - 1;
      line(cx, cy, x, y);
      
    }
    
    stroke(0, 255, 0);
    noFill();
    strokeWeight(4);
    ellipse(cx, cy, radius * 2.01, radius * 2.01);
    strokeWeight(1);
    ellipse(cx, cy, radius * 1.4, radius * 1.4);
    ellipse(cx, cy, radius * 0.8, radius * 0.8 );
    ellipse(cx, cy, radius * 0.3, radius * 0.3);
    
  }
}