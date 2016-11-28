class Vital
{
  String information;
  float value;
  color colour;

  Vital(String line)
  {
    String[] parts = line.split("\t");
    information = parts[0];
    value = Float.parseFloat(parts[1]);
    colour = color(random(0, 255), random(0, 255), random(0, 255));
  }
  
  Vital()
  {
  }

}


void loadVitals()
  {
    for(TableRow row : table.rows())
    {
      Vital v = new Vital();
      
      v.information = row.getString("information");
      v.value = row.getFloat("value");
      
      vitals.add(v);
      
      println(v.value);
    }
  }
  
  
  
   
  void barchart()
  {
    fill(0);
    strokeWeight(1);
    stroke(255);
    rect(70, height - 220, 420, 200);
    
    int barwidth = 50;
    int gap = 120;
    int start = 140;
    
    
    Vital v = new Vital();
    for(int i = 0; i < vitals.size(); i++)
    {
      v = vitals.get(i);
      fill(random(255), random(255), random(255));
      noStroke();
      rect(start, height - 20, barwidth, - v.value );
      start += gap;
    }
  }