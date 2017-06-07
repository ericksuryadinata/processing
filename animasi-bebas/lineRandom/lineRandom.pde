void setup(){
  size(760,500);
  background(60);
  frameRate(10);
}

void draw(){
  stroke(random(255),random(255),random(255));
  strokeWeight(1.5);
  line(375,250,random(700),random(500));
}