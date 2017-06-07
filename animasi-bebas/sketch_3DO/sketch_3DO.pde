int amount = 1000;
int[] x = new int[amount];
int[] y = new int[amount];
int[] z = new int[amount];
int total = 70;
bola b = new bola(75);
kubus k = new kubus(250);
kiri ki = new kiri();
ArrayList<Planet> planets = new ArrayList<Planet>();

void setup(){
  size(600,600,P3D);
  background(0);
  for(int i = 0; i<amount; i++) {
    x[i] = int(random(-100, 100));
    y[i] = int(random(-100, 100));
    z[i] = int(random(-100, 100));
  }
  for(int i=0; i<total; i++){
    planets.add(new Planet());
  }
}

void draw(){
  background(0);
  ki.show();
  
}

class kiri{
  void show(){
    translate(width/2,height/2);
    for(int i=0; i<total; i++){
      //planets.get(i).show();
      planets.get(i).showMirror();
    }
    
    //k.show();
    for(int i = 0; i<amount; i++) {
      point(x[i], y[i], z[i]);
    }  
    b.show();
  }
}

class bola{
  int a;
  bola(int b){
    this.a=b;
  }
  
  void show(){
    rotateY(frameCount / 100.0);
    noFill();
    stroke(255);
    lights();
    sphere(this.a);
  }
}

class kubus{
  int a;
  kubus(int b){
    this.a=b;
  }
  
  void show(){
    rotateY(frameCount / 100.0);
    noFill();
    stroke(255);
    box(this.a);
  }
  
  void showMirror(){
    rotateY(-(frameCount / 100.0));
    noFill();
    stroke(255);
    box(this.a);
  }
}

class Planet {
  float x, y, z;
  float posisi, ukuran, speed, radius;
  color col;

  Planet() {  
    posisi = random(PI*2);
    speed = random(0,-0.05);
    ukuran= 1;
    radius = random(200,250);
    y =  random(-10,10);
    col = color(random(255), random(255), random(255));
  }

  void show() {
    //update values
    posisi+=speed;
    
    //calc position
    x = cos(posisi) * radius;
    z = sin(posisi) * radius;
    
    //draw
    pushMatrix();
      noStroke();
      lights();
      rotateY(frameCount / 100.0);
      translate(x, y, z);
      fill(col);
      sphere(ukuran); 
    popMatrix();
  }
  
  void showMirror(){
    //update values
    posisi+=speed;
    
    //calc position
    x = cos(posisi) * radius;
    z = sin(posisi) * radius;
    
    //draw
    pushMatrix();
      noStroke();
      lights();
      rotateY(-(frameCount / 100.0));
      translate(x, y, z);
      fill(col);
      sphere(ukuran); 
    popMatrix();
  }
}