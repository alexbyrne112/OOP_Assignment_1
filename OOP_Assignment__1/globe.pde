class Globe
{
 void planet()
 {
   pushMatrix();
  noStroke();
  fill(213);
  lights();
  translate(width - 150,height - 150, +10);
  sphere(100);
  popMatrix();
 }
}