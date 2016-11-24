void setup()
{
  noCursor();
  fullScreen();
  background(0);
  space = loadImage("assignment_background.jpg");
  smooth(4);
  
  font = loadFont("SimpleTechBold02-48.vlw");
  
  a = new Cockpit(); 
  f = new Fuel();
  s = new Speedo();
  
 radars.add(new Radar(110, 110, 100,0.07f));
 
  //c1 = color(255, 235,0);
  //c2 = color(130, 36,36);
}
PImage space;
Cockpit a;
Fuel f;
Speedo s;

PFont font;

//int X_AXIS = 2;
//color c1, c2;

ArrayList<Radar> radars = new ArrayList<Radar>();
ArrayList<Fuel> fuel = new ArrayList<Fuel>();

void draw()
{
  image(space,0, 0,width,height);
  a.display();
  f.update();
  f.render();
  s.render();

  //setGradient(50, 190, 540, 80, c2, c1, X_AXIS);
  
   for(Radar r:radars)
  {
    r.update();
    r.render();
  } 
}