class Radio
{
  int count = 0;
  
  void display()
  {
    Button b1 = new Button();
    b1.x = width - 2*width/3;
    b1.y = height - 185;
    b1.bwidth = 130;
    b1.bheight = 130;
    strokeWeight(1);
    stroke(255);
    fill(15,15,115);
    rect(width - 2*width/3,height - 185 , width / 3, 130);
    fill(0);
    rect(b1.x, b1.y, b1.bwidth, b1.bheight);
    fill(0);
    text("RADIO", width / 2 - 160,height - 188);
    fill(255);
    textSize(60);
    text("RADIO", width / 2 - 150,height - 198);
    
    if(mouseX >= b1.x && mouseX < b1.x + b1.bwidth && mouseY >= b1.y && mouseY < b1.y + b1.bheight)
    {
      if(mousePressed == true && count == 0)
      {
        count += 1;
        Song.play();
        Song.loop();
      }
      else if(mousePressed == true && count == 1)
      {
        count -= count;
        Song.pause();
        Song.rewind();
      }
    }
      if(count == 0)
      {
        noFill();
        strokeWeight(3);
        stroke(255,0,0);
        arc(b1.x + 65, b1.y + 65, 50, 50, radians(290), radians(610)); 
        line(b1.x + 65,b1.y +53,b1.x + 65, b1.y +32);
      }
      else if(count == 1)
      {
        noFill();
        strokeWeight(3);
        stroke(5,230,255);
        arc(b1.x + 65, b1.y + 65, 50, 50, radians(290), radians(610));
        line(b1.x + 65,b1.y +53,b1.x + 65, b1.y +32);
      }
      for(int i = 0; i < Song.bufferSize() - 1; i++)
      {
        stroke(5,150,255);
        line( width - 2*width/3 + 130, height - 120 + Song.right.get(i)*75, width - width/3, height - 120 + Song.right.get(i+1)*75 );
      }
  }
}