void setup(){
  size(600,600);
  background(255);
  frameRate(10);
}

void draw(){
  //isi warna(R,G,B);
  stroke(random(255),random(255),random(255));
  //posisi x1,y1, x2, y2;
  line(0,0,random(600),600);
  stroke(random(255),random(255),random(255));
  line(600,0,random(600),600);
}