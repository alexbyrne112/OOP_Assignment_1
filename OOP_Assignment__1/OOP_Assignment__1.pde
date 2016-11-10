void setup()
{
  fullScreen();
  background(0);
  
  space = loadImage("assignment_background.jpg");
}
PImage space;
void draw()
{
  image(space,0, 0,width,height);
}