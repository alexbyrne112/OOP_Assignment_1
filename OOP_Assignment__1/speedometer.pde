class Speedo
{
  //float x1 = width;
  //float y1 = 0;
  //float x2 = ;
  //float y2 = ;
  
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
  } 
 
}