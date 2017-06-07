void setup(){
  size(600,600);
  background(255);
}

void draw(){
  smooth();
  noFill();
  bezier(50,85,10,25,105,25,105,75);
  bezier(125,75,125,25,220,25,180,85);
  bezier(50,85,0,220,230,220,180,85);
  line(105,75,125,75);
  ellip();
  hidungMulut();
}

void ellip(){
  fill(0);
  ellipse(90,110,10,10);
  ellipse(140,110,10,10);
}

void hidungMulut(){
  noFill();
  ellipse(115,130,10,10);
  line(115,135,115,150);
  bezier(100,150,100,155,110,155,115,150);
  bezier(115,150,120,155,135,155,130,150);
}