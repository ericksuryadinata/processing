int x = 250 + int(random(-80,80)), y=370, x_speed = 3, y_speed = -3;
int x_pemantul = 250, y_pemantul = 370, panjang_pemantul = 40;
int score = 0,level = 1, tunggu = 0;
boolean gameover=false;
int[] block = new int[20];

void setup(){
  size(500,400);
  rectMode(CENTER);
  /* rules untuk visible dari block yang terbentuk */
  for (int i=0; i<20; i++) {
    block[i] = 1;
  }
  
}

void draw(){
  int i,x_block,y_block, hilang; 
  
  /* init awal, background hitam, fill putih */
  background(0);
  fill(255);
  
  /* display score */
  textSize(16);
  textAlign(RIGHT);
  text("score", 80,390);
  textAlign(LEFT);
  text(score, 90,390);
  
  /* display level */
  textAlign(RIGHT);
  text("level", 450,390);
  textAlign(LEFT);
  text(level, 460,390);
  
  if(!gameover){
  /* pantulan bola */
  x+=x_speed;
  y+=y_speed;
  
  /* agar bola tidak keluar map */
  if(y<0)
    y_speed = -y_speed;
  if(x>width || x<0 )
    x_speed = -x_speed;
  if(y>height)
    gameover=true;
    
  /* tombol pengatur pemantul */
  if(keyPressed){
    if(keyCode == RIGHT || key == 'd'){
      x_pemantul+=8;
    }else if(keyCode == LEFT || key == 'a'){
      x_pemantul-=8;
    }else if(keyCode == ' '){
      x = 250 + int(random(-80,80)); y=370; x_speed = 3; y_speed = -3; //reset semua
      for (i=0; i<20; i++) block[i] = 1; score=0; level=1; //reset semua
    }
  }
  
  /* agar pemantul tidak keluar map */
  if(x_pemantul+40>width)
    x_pemantul = width-40;
  if(x_pemantul-40<0)
    x_pemantul = 40;
  
  /* ketika bola menyentuh pemantul, bola akan kembali */
  if((x_pemantul - panjang_pemantul) < x && (x_pemantul + panjang_pemantul) > x && (y_pemantul - 10) < y && y_pemantul > y ){
    y_speed = -y_speed;
  }
  /* gambar bola dan pemantul */
  ellipse(x,y,10,10);
  rect(x_pemantul,y_pemantul,panjang_pemantul*2,11);
  /* gambar block */
  hilang = 1;
  
  for(i=0;i<20;i++){
    x_block = i%5*100; //0 - 4, posisi x = {0,100,200,300,400}
    y_block = 40*(i/5)+10; //0-4, posisi y = {10,50,90,130}
    
    if(block[i]==1){
      rect(x_block+50, y_block+10, 80,20);
      hilang = 0;
    }
    
    if(x>(x_block + 4) && x<(x_block + 76) && y>y_block && y<(y_block+20) && block[i]==1){
      block[i]=0;
      x_speed = -x_speed;
      score+=1;
    }
    
    if (((x>(x_block-5) && x<x_block) || (x>(x_block+80) && x<(x_block+85))) &&
      y>y_block && y<(y_block+20) && block[i]==1) { 
      block[i]=0;
      x_speed = -x_speed;
      score+=1;
    }

    if (((x>(x_block-1) && x<(x_block+5)) || (x>(x_block+75) && x<(x_block+81))) &&
      y>y_block && y<(y_block+20) && block[i]==1) { 
      block[i]=0;
      x_speed = -x_speed;
      y_speed = -y_speed;
      score+=1;
    } 
  }
  
  if (hilang==1 && tunggu<200) {
    textSize(40);
    textAlign(CENTER);
    text("Level cleared...", 250, 210);
    text("Preparing next level", 250, 290);
    x = 250;
    y = 350;
    x_speed = 0;
    y_speed = 0;
    tunggu++;
    if (tunggu==200) {
      tunggu = 0;
      x = 250 + int(random(-80,80));;
      y = 350;
      x_speed = 3+level;
      y_speed = -3-level;
      x_pemantul = 250;
      level++;
      // All blocks exist
      for (i=0; i<20; i++) {
        block[i] = 1;
      }
    }
  }
  }else{
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("GAME OVER. Press Space",width/2,height/2);
    if(keyPressed&&key==' '){
      x = 250 + int(random(-80,80)); y=370; x_speed = 3; y_speed = -3;
      x_pemantul = 250; y_pemantul = 370;
      gameover=false;
      score=0;
      level=1;
      for (i=0; i<20; i++) {
        block[i] = 1;
      }
    } 
  }
}