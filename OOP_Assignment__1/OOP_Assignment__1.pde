void setup()
{
 // noCursor();
  fullScreen(P3D);
  background(0);
  space = loadImage("assignment_background.jpg");
  warp = loadImage("warp.jpg");
  space2 = loadImage("assignment_background2.jpg");
  planet = loadImage("planet.jpg");
  smooth(4);
  
  font = loadFont("SimpleTechBold02-48.vlw");
  table = loadTable("SystemVitals.tsv", "header");
  a = new Cockpit(); 
  f = new Fuel();
  s = new Speedo();
  radio = new Radio();
  g = new Globe();
  
  minim = new Minim(this);
  Song = minim.loadFile("technothing.mp3");
  
  radars.add(new Radar(110, 110, 100,0.07f));
 
  loadVitals();
  
}
Table table;

PImage warp;
PImage space2;
PImage space;
PImage planet;

Cockpit a;
Fuel f;
Speedo s;
Radio radio;
Globe g;

PFont font;

import ddf.minim.*;
Minim minim;
AudioPlayer Song;

ArrayList<Radar> radars = new ArrayList<Radar>();
ArrayList<Fuel> fuel = new ArrayList<Fuel>();

ArrayList<Vital> vitals = new ArrayList<Vital>();

int change = 0;
float warp_back;
float background = 1;
int noFuel = 0;

void draw()
{
    if(warp_back == 0)
    {
      if(background == 1)
      {
        image(space,0, 0,width,height);
      }
      else if(background == -1)
      {
        image(space2,0, 0,width,height);
      }
    }
    else if(warp_back == 1)
    {
      image(warp,0, 0,width,height);
    }
  a.display();
  
  f.update();
  f.render();
  
  s.render();
  s.update();
 
  
  radio.display();
  
  for(Radar r:radars)
  {
    r.update();
    r.render();
  } 
  if(keyPressed == true)
  {
    if(key == 'b')
    {
      change = 0;
    }
    if(key == 't')
    {
      change = 1;
    }
  }
  if(change == 0)
  {
    barchart();
  }
  if(change == 1)
  {
    trendGraph();
  }
   g.planet();
   g.updatePlanet();
}