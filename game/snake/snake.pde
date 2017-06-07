ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w=30, h=30, bs=20; // perbesar dan perkecil ukuran map, hasil kali antara w, h dengan bs harus setotal dengan ukuran size();
int dir=1;  // menentukan pergerakan awal s=0,w=1,d=2,a=3
int ax=12, ay=12; // posisi makanan awal 
int []dx={0,0,1,-1}, dy={1,-1,0,0}; // pergerakan ular, perpaduan dua arah, (x,y = 0,1) berarti y kebawah tombol s 
                                    //(x,y = 0,-1) berarti y ke atas tombol w, (x,y = 1,0) berarti x kekanan tombol d, (x,y = -1,0) berarti x ke kiri tombol a
boolean gameover=false;
int score=0;

void setup(){
  size(600,600);
  x.add(5); y.add(5); //posisi ular pertama
}

void draw(){
  background(255);
  fill(0);
   textSize(16);
  textAlign(RIGHT);
  text("score", 80,550);
  textAlign(LEFT);
  text(score, 90,550);
  /* membuat garis y sebanyak w */
  /*for(int i=0;i<w;i++)
    line(i*bs,0,i*bs,height);
  
  /* membuat garis x sebanyak h */
  /*for(int i=0;i<h;i++)
    line(0,i*bs,width,i*bs);

  /* membuat ular */
  fill(0,255,0);
  for(int i=0;i<x.size();i++)
    rect(x.get(i)*bs,y.get(i)*bs,bs,bs);
  
  if(!gameover){ //looping selama tidak game over
    fill(255,0,0);
    rect(ax*bs,ay*bs,bs,bs); // makanan
    if(frameCount%5==0){
       x.add(0,x.get(0)+dx[dir]); // memindahkan kepala ular sesuai angka dir, angka dir didapatkan dari keyPressed()
       y.add(0,y.get(0)+dy[dir]); // memindahkan kepala ular sesuai angka dir, angka dir didapatkan dari keyPressed()
       
       if(x.get(0)<0||y.get(0)<0||x.get(0)>=w||y.get(0)>=h) // jika ular menyentuh map
         gameover=true;
         
       for(int i=1;i<x.size();i++) // jika ular menyentuh badannya sendiri
         if(x.get(0)==x.get(i)&&y.get(0)==y.get(i))
         gameover=true;
         
       if(x.get(0)==ax&&y.get(0)==ay){ // jika kepala ular bertemu dengan makanan
         ax=(int)random(0,w); // posisi makanan akan dirandom
         ay=(int)random(0,h);
         score+=1;
       }else{
         x.remove(x.size()-1); // menghapus jejak ular
         y.remove(y.size()-1); // menghapus jejak ular
       }
    }
  }else{
    fill(0);
    textSize(30);
    textAlign(CENTER);
    text("GAME OVER. Press Space",width/2,height/2);
    if(keyPressed&&key==' '){
      x.clear();
      y.clear();
      x.add(5);
      y.add(5);
      ax=(int)random(0,w); // posisi makanan akan dirandom
      ay=(int)random(0,h);
      score=0;
      gameover=false;
    }
  }
}

void keyPressed(){
  int nd=key=='s'? 0:(key=='w'? 1:(key=='d'? 2:(key=='a'? 3:-1))); // dipencet s nilai nd=0, dipencet w nilai nd=1, dipencet d nilai nd=2, dipencet a nilai nd=3, else -1
  //misal pencet tombol d, maka nd=2, ( 0 && ( 1 || (1==0+1 && 1==0+1)))
  // ( 1 && ( 1 || ! ( 1 && 1)))
  // intinya akan bernilai benar
  if(nd!=-1&&(x.size()<=1||!(x.get(1)==x.get(0)+dx[nd]&&y.get(1)==y.get(0)+dy[nd])))
  dir=nd;
}