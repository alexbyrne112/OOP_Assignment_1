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