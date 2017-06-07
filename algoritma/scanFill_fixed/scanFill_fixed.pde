int tinggiCanvas=600;
int lebarCanvas=600;
int start=millis();
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
  //(titik tengah x, titik tengah y, jari-jari, ketebalan garis, warna fill);
  isiLingkaran(0,0,10,3,hitam,hitam);
}


void lingkarantebal(int x0, int y0, int r, int tebal, color f, color b){
    stroke(f);
    midpoint(x0, y0, r);
    stroke(b);
    midpoint(x0, y0, r+tebal);
}
 
void isiLingkaran(int x0, int y0, int r, int tebal, color fillcol, color boundcol){
    lingkarantebal(x0, y0, r, tebal, fillcol, boundcol);
    filling(boundcol,putih);
}
 
void filling(color fillcol, color back){
    int a1,a2;
    a1=0;a2=0;
    boolean stat1,stat2,stat3;
    stat1=false;stat2=false;stat3=false;
    for (int i=0; i<=600; i++){
        for (int j=0; j<=600; j++){
            if (get(j,i)==fillcol){
                stat1=true;
            }
            if ((get(j,i)==back)&&(stat1==true)){
                stat2=true;
                if (a1==0){
                    a1=j;
                }
            }
            if ((get(j,i)==fillcol)&&(stat2==true)){
                stat3=true;
                if (a2==0){
                    a2=j;
                }
            }
 
        }
        if (stat3==true){
            for (int k=a1;k<=a2;k++){
                if(millis()>start)
                {
                   start=millis();
                   stroke(fillcol);
                    point(k,i);
                }
            }
        }
        a1=0;a2=0;
        stat1=false;stat2=false;stat3=false;
    }
}
 
void midpoint(int x0, int y0, int r) {
    int P=1-r;
    int x=0;
    int y=r;
 
    plot(x0,y0,x,y);
    for (int xa=x; x<y;) {
 
        if (P<0)
        {
            x=x+1;
            P=P+2*x+1;
            plot(x0,y0,x,y);
        }
        else
        {
            x=x+1;
            y=y-1;
            P=P+(2*x)-(2*y)+1;
            plot(x0,y0,x,y);
        }
    }
}

void plot(int x0, int y0, int x, int y) {
    titik(x+x0, y+y0);
    titik(x+x0, -y+y0);
    titik(-x+x0, -y+y0);
    titik(-x+x0, y+y0);
    titik(y+x0, x+y0);
    titik(y+x0, -x+y0);
    titik(-y+x0, x+y0);
    titik(-y+x0, -x+y0);
}
void titik(int xxx, int yyy)
{
    point(xxx+(lebarCanvas/2), (yyy*-1)+(tinggiCanvas/2));
}


void garisBantu(){
  stroke(233,233,233);
  for(int z=0;z<lebarCanvas;z++){
    point(lebarCanvas/2,z);
    point(z,tinggiCanvas/2);
  }
  stroke(0,0,0);
}