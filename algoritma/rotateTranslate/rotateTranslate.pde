void setup(){
  size(600,600);
}
float posisiAwal, putar, sudut, theta,akhir;
void draw(){
  putar=putar-0.01;
  background(255);
  translate(width/2,height/2);
  //scale(3.0);  
  rotate(0);
  fill(0,0,255);
  quad(30,30,60,30,60,60,30,60);
  fill(255,255,0);
  quad(30,60,15,45,30,30,45,45);
  fill(255,0,255);
  quad(30,30,0,30,0,0,30,0);
  pushMatrix();
  translate(25,25);
  rotate(putar);
  fill(255,255,0);
  ellipse(43,43,20,20);
  popMatrix();
  
}