class Cockpit
{
  void display()
  {
  strokeWeight(1);  
  fill(60);
  stroke(255);
  rect(width-1, height,-width+1,-250,20,20,1,1);
  quad(width/5,height - 250,width/2-200,height - 350,width/2+200,height - 350,width/5*4,height - 250);
  rect(0, 0, width, 200); 
  arc(-150, -150, 1000, 1000, radians(0), radians(90));
  ellipse(width + 150, -150, 1000, 1000);
  }
}