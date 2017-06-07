
color currentColor=255;
PImage img, img2;
boolean pressed;

void setup() {
  size(600, 600);
  img = loadImage("photo.jpg");
}

void draw() {

  background(currentColor);
  image(img, 150, 150);
  
  buttonGrey();
  textSize(12);
  fill(0, 102, 153);
  text("GRAYSCALE", 13, 30);
  buttonRgb();
  textSize(18);
  fill(0, 102, 153);
  text("RGB", 25, 80);
  
  //if(key == ENTER)
  //{
  //  greyscale();
  //}
  //if(key == BACKSPACE)
  //{
  //  rgb();
  //}
      
}

void greyscale()
{
    img2= createImage(img.width,img.height,RGB);
        for(int i=0;i<img.width;i++){
          for(int j=0;j<img.height;j++){
      
        color warnaAsli = img.get(i,j);
        float merah = (red(warnaAsli)*0.2989)+(green(warnaAsli)*0.8870)+(blue(warnaAsli)*0.1141);
        float hijau = (red(warnaAsli)*0.2989)+(green(warnaAsli)*0.8870)+(blue(warnaAsli)*0.1141);
        float biru  = (red(warnaAsli)*0.2989)+(green(warnaAsli)*0.8870)+(blue(warnaAsli)*0.1141);
        color warnaOlahan = color( min(255,merah),
                                   min(255,hijau),
                                   min(255,biru)
                                 );
       
         img2.set(i,j,warnaOlahan);
          }
        }
   img2.resize(250,250);  
   image(img2, 150, 150);
}

void rgb()
{
   img2= createImage(img.width,img.height,RGB);
        for(int i=0;i<img.width;i++){
          for(int j=0;j<img.height;j++){
      
        color warnaAsli = img.get(i,j);
        float merah = (red(warnaAsli)*0.2989)+(green(warnaAsli)*0.8870)+(blue(warnaAsli)*0.1141);
        float hijau = (red(warnaAsli)*0.2989)+(green(warnaAsli)*0.8870)+(blue(warnaAsli)*0.1141);
        float biru  = (red(warnaAsli)*0.2989)+(green(warnaAsli)*0.8870)+(blue(warnaAsli)*0.1141);
        color warnaOlahan = color( min(255,merah),
                                   min(255,hijau),
                                   min(255,biru)
                                 );
       
         img2.set(i,j,warnaAsli);
          }
        }
   img2.resize(250,250);     
   image(img2, 150, 150);
}

void buttonGrey()
{
  fill(225);
  rect(10,10,70,30);
  if(pressed)
  {
    greyscale();
  }
}

void buttonRgb()
{
  fill(224);
  rect(10,60,70,30);
   if(!pressed)
    {
      rgb();
    }
}

void mouseClicked()
{
  if(mouseX > 10 && mouseY <10+70 && mouseY >10 && mouseY < 10+30)
    {
      pressed = true;
    }
    
   if(mouseX > 10 && mouseX < 10 + 70 && mouseY > 60 && mouseY < 60+30 )
   {
     pressed = false;
   }
}