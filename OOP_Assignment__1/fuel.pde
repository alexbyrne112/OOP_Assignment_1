class Fuel
{
  float x = width - 350;

  void update()
  { 
    textFont(font);
    textSize(24);
    fill(255);
    text(((int)(map(x,350,width-350,0, 100))) + "%", x - 38, 100 - 40);
    if(x > 350)
    {
      x = x - 0.1;
    }
  }
  
  void render()
  {
    strokeWeight(1);
    fill(130,35,35);
    rect(350,100,width - 700,100);
    strokeWeight(4);
    stroke(255);
    line(x, 75, x, 200);
  }
  
  //void setGradient(int x, int y, float w, float h, color c1, color c2, int axis )
  //{
  //noFill();

  //  if (axis == X_AXIS)
  //  {  // Left to right gradient
  //    for (int i = x; i <= x+w; i++) 
  //    {
  //      float inter = map(i, x, x+w, 0, 1);
  //      color c = lerpColor(c1, c2, inter);
  //      stroke(c);
  //      line(i, y, i, y+h);
  //    }
  //  }
  //}
}