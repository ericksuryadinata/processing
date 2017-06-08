float teta_inc=0.001,tetas=0,teta_inc1=0.003,teta_inc2=0.007,teta_inc3=0.009,tetas1=0,tetas2=0,tetas3=0;
float teta=0,teta1=0,teta2=0,teta3=0;
color merah = color (255,0,0);
color biru = color (0,0,255);
color hijau = color (0,255,0);
color hitam = color (0,0,0);
color kuning = color (244, 255, 30);
color putih = color (255,255,255);
color violet = color (255,0,255);
void setup() {
    size(600,600);
    
    //noLoop();
}

void draw() {
  noFill();
  background(102);
  create(12);
}


void polygon(int n, int cx, int cy, float r) {
  
  float angle = 360.0 / n;
  float x,y;
  noFill();
  beginShape();
  for (int i = 0; i < n; i++) {
    x=cx + r * cos(radians(angle * i));
    y=cy + r * sin(radians(angle * i));
    vertex(x,y);
  }
  endShape(CLOSE);
  
  for (int i = 0; i < n; i++) {
    fill(255);
    x=cx + r * cos(radians(angle * i));
    y=cy + r * sin(radians(angle * i));
    move(x,y);
  }
}

void create(int n){
  for(int i=0;i<n;i++){
    polygon(i+3,width/2,height/2,50+i*20);
  }
}

void move(float x, float y){
  ellipse(x,y,5,5);
  x++;y++;
}