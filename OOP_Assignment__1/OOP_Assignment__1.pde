void setup()
{
  fullScreen();
  background(0);
  space = loadImage("assignment_background.jpg");
  
  a = new Cockpit(); 
}
PImage space;
Cockpit a;

void draw()
{
  image(space,0, 0,width,height);
  a.display();

}