class Fuel
{
  float x = width - 350;
  void update()
  { 
    textFont(font);
    textSize(30);
    fill(255);
    text(((int)(map(x,350,width-350,0, 100))) + "%", x - 38, 100 - 40);
    if(x > 350)
    {
      x = x - 0.1;
    }
    if(x < 600 && x > 475)
    {
      fill(255,200,0);
      textSize(30);
      text("warning:\nLOW FUEL",width - 350, 400);
    }
    if(x < 475 && x > 351)
    {
      fill(255,0,0);
      textSize(30);
      text("warning:\nLOW FUEL",width - 350, 400);
    }
    if(x == 350)
    {
      fill(255,0,0);
      textSize(30);
      text("warning:\nNO FUEL",width - 350, 400);
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
    fill(0);
    textSize(60);
    text("FUEL",width / 2 - 140, 180);
    fill(255);
    textSize(60);
    text("FUEL",width / 2 - 130, 170);  
  }
}