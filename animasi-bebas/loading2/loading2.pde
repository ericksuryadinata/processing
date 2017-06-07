void setup() {
  size(500, 500);
  background(255);
  smooth();
  noStroke();
}


void draw(){
  if (frameCount % 10 == 0) { // kecepatan gerak
    
    //menghapus jejak setiap warna yang dihasilkan, besar kotak sesuai dengan lembar kerja
    fill(255, 255, 255, 50);
    rect(0, 0, width, height);
    
    fill(0);
    pushMatrix();
    translate(250, 250); //pindahkan lingkaran dari posisi semula
    rotate(-radians(frameCount*3 % 360)); //rotasi, jauh jarak lingkaran ditentukan oleh hasil kali, semakin kecil hasil kali, semakin dempet
    ellipse(50, 50, 25, 25); // posisi x, y, tinggi lingkaran,lebar lingkaran
    popMatrix();
    
    //isi lingkaran dengan warna hitam
    fill(0);
    pushMatrix();
    translate(250, 250); //pindahkan lingkaran dari posisi semula
    rotate(radians(frameCount * 2 % 360)); //rotasi, jauh jarak lingkaran ditentukan oleh hasil kali, semakin kecil hasil kali, semakin dempet
    ellipse(100, 100, 50, 50); // posisi x, y, tinggi lingkaran,lebar lingkaran
    popMatrix();
    
    fill(0);
    pushMatrix();
    translate(250, 250); //pindahkan lingkaran dari posisi semula
    rotate(radians(-(frameCount * 1.5 % 360))); //rotasi, jauh jarak lingkaran ditentukan oleh hasil kali, semakin kecil hasil kali, semakin dempet
    ellipse(150, 150, 50, 50); // posisi x, y, tinggi lingkaran,lebar lingkaran
    popMatrix();
 }
}