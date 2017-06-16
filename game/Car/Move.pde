class Move 
{
  PVector location;
  PVector locationCoin;
  PVector locationBomb;
  PVector speedup;
  PVector acceleration;
  
  float speed,x,y,hC,wC,hB,wB;
  PShape car;
  PShape coin;
  PShape;
  
  Move() //constructor
  {
    location = new PVector(width/2, height/2);
    speedup = new PVector(0, 0);
    speed = 5;
    wC=30;
    hC=20;
    wB=30;
    hB=20;
    x=random(255);
    y=random(255);
  }
  
  void renewal()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, location);
    dir.normalize();
    dir.mult(0.5);
    acceleration = dir;
    
    speedup.add(acceleration);
    speedup.limit(speed);
    location.add(speedup);
  }
  
  void showCar()
  {
    car = loadShape("mobil.svg");
    float theta = speedup.heading();
    //println(theta);
    pushMatrix();
    shapeMode(CENTER);
    translate(location.x, location.y);
    rotate(theta);
    shape(car,0,0,90,50);
    popMatrix();
  }
  
  void showCoin()
  {
    coin = loadShape("coin.svg");
    textSize(16);
    textAlign(RIGHT);
    text("score", 80,550);
    textAlign(LEFT);
    text(score, 90,550);
    locationCoin = new PVector(x,y);
    println(locationCoin.x+" "+locationCoin.y);
    println(location.x+" "+location.y);
    translate(locationCoin.x,locationCoin.y);
    shape(coin, 0, 0, wC, hC);
    if((location.y <= locationCoin.y + hC) && (location.y >= locationCoin.y - hC) && (!(location.x <= locationCoin.x - wC)) && (!(location.x >= locationCoin.x + wC))) {
      score++;
      x=random(height);
      y=random(width);
    }
    
  }
  
  void showBomb()
  {
    bomb = loadShape("bomb.svg");

    locationBomb = new PVector(x,y);
    println(locationBomb.x+" "+locationBomb.y);
    println(location.x+" "+location.y);
    translate(locationBomb.x, locationBomb.y);
    shape(bomb, 0, 0, wB, hB);
    
    //Tinggal logikanya saja, biar kena bomb otomatis gameover, dan keluar play again. :D
    //Masih newbie mainan processing :V
    
    xB=random(height);
    yB=random(width);
  }
}
