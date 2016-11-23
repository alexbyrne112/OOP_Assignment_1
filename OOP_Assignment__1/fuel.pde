class Fuel
{
  float x;

  void render()
  {
    x = width - 350;
  }
  
  void update()
  {
    strokeWeight(1);
    fill(130,35,35);
    rect(350,100,width - 700,100);
    strokeWeight(4);
    stroke(255);
    line(x, 75, x, 200);
  }
}