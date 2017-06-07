color merah = color (255,0,0);
color biru = color (0,0,255);
color hijau = color (0,255,0);
color hitam = color (0,0,0);
color kuning = color (244, 255, 30);
color putih = color (255,255,255);
color violet = color (255,0,255);

int lines=4;
float posisiAwal, putar, sudut, theta,akhir;

void setup(){
  size(600,600);
  strokeWeight(5);
  noFill();
  posisiAwal = -(270/2);
}

void draw(){
  background(18,18,17);
  translate(width/2,height/2);
  
  putar = (PI/4/4);
  sudut = (theta+putar) % PI;
  float akhir = map(sin(sudut),-1,1,-TWO_PI,TWO_PI);
  
  if(sudut <= (PI/2)){
    stroke(merah);
    arc(0,0,50,50,posisiAwal,akhir+posisiAwal);
  }else{
    stroke(merah);
    arc(0,0,50,50,TWO_PI-akhir+posisiAwal,TWO_PI+posisiAwal);
  }
  
  if(sudut <= (PI/2)){
    stroke(hijau);
    arc(0,0,100,100,posisiAwal,akhir+posisiAwal);
  }else{
    stroke(hijau);
    arc(0,0,100,100,TWO_PI-akhir+posisiAwal,TWO_PI+posisiAwal);
  }
  
  if(sudut <= (PI/2)){
    stroke(biru);
    arc(0,0,150,150,posisiAwal,akhir+posisiAwal);
  }else{
    stroke(biru);
    arc(0,0,150,150,TWO_PI-akhir+posisiAwal,TWO_PI+posisiAwal);
  }
  
  if(sudut <= (PI/2)){
    stroke(kuning);
    arc(0,0,200,200,posisiAwal,akhir+posisiAwal);
  }else{
    stroke(kuning);
    arc(0,0,200,200,TWO_PI-akhir+posisiAwal,TWO_PI+posisiAwal);
  }
  
  /************ KONSEP *************/
  /*for(int i=0;i<lines;i++){
    spacing = i*step;
    println(spacing);
    offset = (PI/4/lines)*i;
    println(offset);
    angle = (theta+offset) % PI;
    float arcEnd = map(sin(angle),-1,1,-TWO_PI,TWO_PI);
    if(angle <= (PI/2)){
      stroke(i*45,i*20,i*45);
      arc(0,0,spacing,spacing,0+startPosition,arcEnd+startPosition);
    }else{
      stroke(i*45,i*20,i*45);
      arc(0,0,spacing,spacing,TWO_PI-arcEnd+startPosition,TWO_PI+startPosition);
    }
  }*/
  /********************************************************************************/
  theta+=.02;
  arc(0,0,3,3,0,TWO_PI);
  
}