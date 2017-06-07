void setup() {
    size(600,600);
    background(255);
}

void draw() {
    drawHelpLines();
    //(titik tengah x, titik tengah y, jari-jari, ketebalan garis, warna fill, warna bound);
    //LingkaranFill(0,0,50,3,kuning,merah);
    midpoint(0,0,100);
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
            garis(x0,y0,x,y);
        }
        else
        {
            x=x+1;
            y=y-1;
            P=P+(2*x)-(2*y)+1;
            plot(x0,y0,x,y);
            garis(x0,y0,x,y);
        }
    }
}
 
void plot(int x0, int y0, int x, int y) {
    stdPoint(x+x0, y+y0);
    stdPoint(x+x0, -y+y0);
    stdPoint(-x+x0, -y+y0);
    stdPoint(-x+x0, y+y0);
    stdPoint(y+x0, x+y0);
    stdPoint(y+x0, -x+y0);
    stdPoint(-y+x0, x+y0);
    stdPoint(-y+x0, -x+y0);
}

void garis(int x, int y, int x1, int y1){
    line(x+(600/2), (y*-1)+(600/2),x1+(600/2), (y1*-1)+(600/2));
}

void stdPoint(int xxx, int yyy)
{
    point(xxx+(600/2), (yyy*-1)+(600/2));
}
 
void drawHelpLines()
{
    stroke(233, 233, 233);
    for (int z=0; z<600; z=z+1) {
        point((600/2), z);
        point(z, (600/2));
    }
    stroke(0, 0, 0);
}