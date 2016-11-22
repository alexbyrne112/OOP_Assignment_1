class Cockpit
{
   
  void display()
  {
    
  fill(60);
  stroke(255);
  rect(width-1, height,-width+1,-250,75,75,1,1);
  quad(width/5,height - 250,width/2-200,height - 350,width/2+200,height - 350,width/5*4,height - 250);
  
  arc(0, 0, 650, 650, radians(0), radians(90));
  ellipse(width, 0, 650, 650);
  }
}