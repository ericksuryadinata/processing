void setup(){
  size(600,600);
  background(255);
  frameRate(10);
  smooth();
}

int x;
void draw(){
  stroke(0,0,255);
  line(0,0+x,600,600-x);
  line(0+x,0,600-x,600);
  x+=25;
  if(x==625) stop();
  
  fill(255);
  ellipse(width/2,height/2,150,150);
}