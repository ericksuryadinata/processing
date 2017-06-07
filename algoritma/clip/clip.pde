/* penggunaan gunakan mouse click untuk melakukan clipping */
void setup() {
  size(600, 600);
}

void draw() {
  background(204);
  if (mousePressed) {
    stroke(255,0,0);
    clip(mouseX, mouseY, 100, 100);
  } else {
    noClip();
  }
  stroke(255);
  fill(0,255,255);
  rect(0,0,600,600);
  fill(255,0,0);
  rect(20,20,100,100);
  fill(255,0,255);
  rect(120,120,200,200);
  fill(0,0,255);
  ellipse(250,250,100,100);
  fill(0,255,0);
  triangle(320,320,400,400,400,320);
  fill(0,0,255);
  triangle(120,410,150,360,180,410);
  triangle(180,410,230,440,180,470);
  triangle(120,470,150,520,180,470);
  triangle(120,410,70,440,120,470);
}