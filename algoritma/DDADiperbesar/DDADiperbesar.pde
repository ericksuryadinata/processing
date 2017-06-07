int lebarCanvas=600;
int tinggiCanvas=600;

void setup(){
  size(600,600);
  background(255);
}
int[] x= {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
int[] y= {2, 5, 4, 6, 3, 8, 9, 11, 15, 17, 18, 12, 15, 11, 8, 12, 10, 7, 6, 10};
float rumus,j,b0,b1,b2;
int i;
//rumus  (-2*pow(x,2)+9*x-5)
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
  //DDA(10,350,10,340);
  gambar(x,y);
}

void DDA(int X1, int X2, int Y1, int Y2){
  float dx=(X2-X1);
  float dy=(Y2-Y1);
  float steps;
  float xInc,yInc,x=X1,y=Y1;
  steps=(abs(dx)>abs(dy))?(abs(dx)):(abs(dy));
  xInc=dx/(float)steps;
  yInc=dy/(float)steps;
  int k;
  for(k=0;k<(int)steps;k++)
  {
    x+=xInc;
    y+=yInc;
    titik(round(x), round(y));
  }
}

void titik(float xxx, float yyy)
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

void gambar(int xV[],int yV[]){
  int panjang;
  if(xV.length%2==0){
    panjang=xV.length-1;
  }else{
    panjang=xV.length;
  }
  for(i=0;i<panjang-1;i+=2){
    for(j=i+1;j<i+3;j=j+0.1){
      b0=yV[i];
      b1=(yV[i+1]-yV[i])/(xV[i+1]-xV[i]);
      b2=((yV[i+2]-yV[i+1])/(xV[i+2]-xV[i+1])-b1)/(xV[i+2]-xV[i]);
      rumus=b0+(b1*(j-xV[i]))+(b2*(j-xV[i])*(j-xV[i+1]));
      titik(round(j*10),round(rumus*10));
    }
  }
}