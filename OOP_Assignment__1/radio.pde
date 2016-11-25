class Radio
{
  void display()
  {
    Button b1 = new Button();
    b1.x = width - 2*width/3;
    b1.y = height - 185;
    b1.bwidth = 130;
    b1.bheight = 130;
    strokeWeight(1);
    stroke(255);
    fill(200);
    rect(width - 2*width/3,height - 185 , width / 3, 130);
    rect(b1.x, b1.y, b1.bwidth, b1.bheight);
  }
}