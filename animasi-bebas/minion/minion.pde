void setup(){
  size(600,600);
  background(255);
}

void draw(){
  noStroke();
  
  //kepala
  fill(252,238,69);
  ellipse(300,210,300,320);
  rect(150,210,300,200);
  
  
  //kotak abu
  fill(108);
  rect(150,195,300,30);
  
  //kotak hitam
  fill(0);
  rect(150,200,300,20);
  
  //mata abu
  fill(152);
  ellipse(300,205,150,150);
  
  //mata putih
  fill(255);
  ellipse(300,205,117,117);
  
  // mata hitam
  fill(0);
  ellipse(300,205,40,40);
  
  // mulut
  ellipse(300, 350, 60, random(40));
}