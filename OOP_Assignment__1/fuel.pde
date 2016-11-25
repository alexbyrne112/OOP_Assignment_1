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
    fill(0);
    rect(350,100,width - 700,100);
    fill(150,35,35);
    rect(350,100,x - 350,100);
    strokeWeight(4);
    stroke(255);
    line(x, 75, x, 200);    
  }
}