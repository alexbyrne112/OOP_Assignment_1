void setup()
{
  fullScreen();
  background(0);
  space = loadImage("assignment_background.jpg");
  
  a = new Cockpit(); 
  
 radars.add(new Radar(110, 110, 100, 0.02f));
}
PImage space;
Cockpit a;

ArrayList<Radar> radars = new ArrayList<Radar>();

void draw()
{
  image(space,0, 0,width,height);
  a.display();
  
   for(Radar r:radars)
  {
    r.update();
    r.render();
  }
  
}