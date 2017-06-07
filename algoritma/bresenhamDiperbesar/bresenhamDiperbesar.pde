int lebarCanvas=1000;
int tinggiCanvas=1000;

void setup(){
  size(1000,1000);
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
  bresenham(10,350,10,340);
}

void bresenham(int x1, int x2, int y1, int y2){
  int xKondisi, yKondisi,dx, dy, p;
  xKondisi=x1;
  yKondisi=y1;
  dx=abs(x2-x1);
  dy=abs(y2-y1);
  if(dx>dy){
    p=2*dy-dx;
    do{
      if(p>0){
        xKondisi+=1;
        yKondisi+=1;
        p=p+((2*dy)-(2*dx));
        titik(xKondisi,yKondisi);
      }else{
        xKondisi+=1;
        p=p+2*dy;
        titik(xKondisi,yKondisi);
      }
    }while(xKondisi!=x2||yKondisi!=y2);
  }else{
    p=2*dx-dy;
    do{
      if(p>0){
        xKondisi+=1;
        yKondisi+=1;
        p=p+((2*dy)-(2*dx));
        titik(xKondisi,yKondisi);
      }else{
        yKondisi+=1;
        p=p+2*dx;
        titik(xKondisi,yKondisi);
      }
    }while(xKondisi!=x2||yKondisi!=y2);
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