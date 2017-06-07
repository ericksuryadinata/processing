void setup(){
  size(600,600);
  background(255);
  drawHelpLines();
  //cosi(0);  // Draw rect at original 0,0
  noFill();
  translate(300, 250);
  cosi(0);
  sini(0);
}

void cosi(float x){
  float inc = TWO_PI/25.0;
  stroke(0,255,0);
  beginShape();
  for (int i = 0; i < 45; i++) {
    vertex(i*4, 50-cos(x)*40.0);
    x = x + inc;
  }
  endShape();
}

void sini(float x){
  float inc = TWO_PI/25.0;
  stroke(0,0,255);
  beginShape();
  for (int i = 0; i < 45; i++) {
    vertex(i*4, 50-sin(x)*40.0);
    x = x + inc;
  }
  endShape();
}

void drawHelpLines()
{
    stroke(233, 233, 233);
    for (int z=0; z<600; z=z+1) {
        point((600/2), z);
        point(z, (600/2));
    }
    stroke(0, 0, 0);
}