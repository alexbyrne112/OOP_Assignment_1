void setup()
{
 // noCursor();
  fullScreen();
  background(0);
  space = loadImage("assignment_background.jpg");
  smooth(4);
  
  font = loadFont("SimpleTechBold02-48.vlw");
  table = loadTable("SystemVitals.tsv", "header");
  a = new Cockpit(); 
  f = new Fuel();
  s = new Speedo();
  radio = new Radio();
  
  minim = new Minim(this);
  Song = minim.loadFile("technothing.mp3");
  
  radars.add(new Radar(110, 110, 100,0.07f));
 
  loadVitals();
}
Table table;

PImage space;
Cockpit a;
Fuel f;
Speedo s;
Radio radio;

PFont font;

import ddf.minim.*;
Minim minim;
AudioPlayer Song;

ArrayList<Radar> radars = new ArrayList<Radar>();
ArrayList<Fuel> fuel = new ArrayList<Fuel>();

ArrayList<Vital> vitals = new ArrayList<Vital>();

void draw()
{
  image(space,0, 0,width,height);
  a.display();
  
  f.update();
  f.render();
  
  s.render();
  s.update();
  
  radio.display();
  
  trendGraph();
  
   for(Radar r:radars)
  {
    r.update();
    r.render();
  } 
}