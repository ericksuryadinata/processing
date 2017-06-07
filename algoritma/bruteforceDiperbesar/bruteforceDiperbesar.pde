int lebarCanvas=600;
int tinggiCanvas=600;

void setup(){
  size(600,600);
  background(255);
}

color merah = color (255,0,0);
color biru = color (0,0,255);
color hijau = color (0,255,0);
color hitam = color (0,0,0);
color kuning = color (244, 255, 30);
color putih = color (255,255,255);
color violet = color (255,0,255);

void draw(){
  garisBantu();
  stroke(hitam);
  bruteForce(10,350,10,340);
}

void bruteForce(float x1, float x2, float y1, float y2){
  float bowl, gradien, xHitung, yHitung;
  int batas, itr;
  if(x1==x2){
      if(y2<y1){
        bowl=y1;
        y1=y2;
        y2=bowl;
      }
      batas=int(y2-y1+1);
      xHitung=x1;
      yHitung=y1;
      for(itr=0;itr<batas;itr++){
        titik(round(xHitung), round(yHitung));
        yHitung+=1;
        
      }
    }else if(y1==y2){
      if(x2<x1){
        bowl=x1;
        x1=x2;
        x2=bowl;
      }
      batas=int(x2-x1+1);
      xHitung=x1;
      yHitung=y1;
      for(itr=0;itr<batas;itr++){
        titik(round(xHitung), round(yHitung));
        xHitung+=1;
      }
    }else{
      if(x2<x1){
        bowl=x1;
        x1=x2;
        x2=bowl;
      }
      batas=int(x2-x1+1);
      gradien=(y2-y1)/(x2-x1);
      xHitung=x1;
      for(itr=0;itr<batas;itr++){
        yHitung=round((gradien*(xHitung-x1))+y1);
        xHitung+=1;
        titik(round(xHitung), round(yHitung));
      }
    }
}

void titik(int xxx, int yyy)
{
    point(xxx+(lebarCanvas/2), (yyy*-1)+(tinggiCanvas/2));
}

void garisBantu(){
  stroke(kuning);
  for(int z=0;z<lebarCanvas;z++){
    point(lebarCanvas/2,z);
    point(z,tinggiCanvas/2);
  }
  stroke(0,0,0);
}