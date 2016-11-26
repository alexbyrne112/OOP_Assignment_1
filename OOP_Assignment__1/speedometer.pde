class Speedo
{
  float x1 = width + 150;
  float y1 = -150;
  //float x2 = 0;
  //float y2 = 0;
  float speed = 113;
  //max 156 min 113
  void render()
  {
    strokeWeight(3);
    stroke(255,0,0);
    line(width -320, 5, width - 290, 5);
    line(width - 275, 100, width -250, 87);
    stroke(255);
    line(width - 5, 320, width - 5, 290);
    line(width - 200, 200,width - 180,180);
    line(width - 100, 275, width - 87 , 250);
    noFill();
    strokeWeight(10);
    stroke(0,255,0);
    arc(x1,y1,800,800,radians(90),radians(speed));
    arc(x1,y1,650,650,radians(90),radians(speed));
    arc(x1,y1,500,500,radians(90),radians(speed));
  } 
  void update()
  {
    if(speed > 113)
    {
     speed -= 0.1; 
    }
    
    
    if(keyPressed == true)
    {
      if(key == 'w')
      {
        if(speed < 156)
      {
          speed += 0.5;
        }
      }
    }
  }
}