void setup(){
  size(600,600);
  smooth();
}

void draw(){
  background(0);
  fill(255);
  ellipse(290,310,300,300);
  fill(0);
  ellipse(290,310,280,280);
  fill(255);
  beginShape();
  vertex(240, 280);
  vertex(200, 380);
  vertex(230, 380);
  vertex(255, 315);
  vertex(295, 400);
  vertex(305, 370);
  vertex(260, 270);
  endShape(CLOSE);
  beginShape();
    vertex(270,265);
    vertex(315,360);
    vertex(340,350);
    vertex(380,260);
    vertex(350,260);
    vertex(325,330);
    vertex(285,240);
  endShape(CLOSE);
  
}