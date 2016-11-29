class Globe
{
  PShape globe;
  float theta;
 void planet()
 {
   pushMatrix();
  noStroke();
  fill(213);
  lights();
  ortho();
  translate(width - 300,height - 120);
  globe = createShape(SPHERE, 100);
  globe.setTexture(planet);
   if(mouseX >= width - 500 && mouseX <= width && mouseY >= height - 400 && mouseY < height)
  {
    globe.rotateY(mouseX *0.01);
    globe.rotateX(mouseY *0.01);
  }
  shape(globe);

  popMatrix();
 }
}