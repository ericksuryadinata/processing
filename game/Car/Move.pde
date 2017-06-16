class Move 
{
  PVector location;
  PVector locationCoin;
  PVector speedup;
  PVector acceleration;
  PVector locationBomb;
  PVector locationBomb2;
  PVector locationBomb3;
  PVector locationBomb4;
  
  float speed,x,y,hC,wC,hB,wB,hCanvas=600,wCanvas=600;
  int d;
  PShape car;
  PShape coin;
  PShape bomb;
  PShape bomb2;
  PShape bomb3;
  PShape bomb4;
  float xB,yB;
  float xB2,yB2;
  float xB3,yB3;
  float xB4,yB4;
  
  
  Move() //constructor
  {
    location = new PVector(width/2, height/2);
    speedup = new PVector(0, 0);
    speed = 5;
    wC=30;
    hC=20;
    wB=30;
    hB=20;
    xB=random(400);
    yB=random(400);
    xB2=random(400);
    yB2=random(400);
    xB3=random(400);
    yB3=random(400);
    xB4=random(400);
    yB4=random(400);
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
    println(locationCoin.x+"CCC"+locationCoin.y);
    //println(location.x+" "+location.y);
    translate(locationCoin.x,locationCoin.y);
    shape(coin, 0, 0, wC, hC);
    if((location.y <= locationCoin.y + hC) && (location.y >= locationCoin.y - hC) && (!(location.x <= locationCoin.x - wC)) && (!(location.x >= locationCoin.x + wC))) {
      score++;
      x=random(wCanvas);
      y=random(hCanvas);
      randomBom();
    }
  }
  
  void showBomb1()
  {
    
    bomb = loadShape("bomb.svg");
    locationBomb = new PVector(xB,yB);
    println(locationBomb.x+"BBB"+locationBomb.y);
    shape(bomb, locationBomb.x, locationBomb.y, wB, hB);
    if((location.y <= locationBomb.y + hB) && (location.y >= locationBomb.y - hB) && (!(location.x <= locationBomb.x - wB)) && (!(location.x >= locationBomb.x + wB))) {
      gameState=3;
      randomBom();
      
    }
  }
  
  void showBomb2()
  {
    
    bomb2 = loadShape("bomb.svg");
    locationBomb2 = new PVector(xB2,yB2);
    println(locationBomb2.x+"BBB"+locationBomb2.y);
    shape(bomb2, locationBomb2.x, locationBomb2.y, wB, hB);
    if((location.y <= locationBomb2.y + hB) && (location.y >= locationBomb2.y - hB) && (!(location.x <= locationBomb2.x - wB)) && (!(location.x >= locationBomb2.x + wB))) {
      gameState=3;
      randomBom();
      
    }
  }
  
  void showBomb3()
  {
    
    bomb3 = loadShape("bomb.svg");
    locationBomb3 = new PVector(xB3,yB3);
    println(locationBomb3.x+"BBB"+locationBomb3.y);
    shape(bomb, locationBomb3.x, locationBomb3.y, wB, hB);
    if((location.y <= locationBomb3.y + hB) && (location.y >= locationBomb3.y - hB) && (!(location.x <= locationBomb3.x - wB)) && (!(location.x >= locationBomb3.x + wB))) {
      gameState=3;
      randomBom();
      
    }
  }
  
  void showBomb4()
  {
    
    bomb4 = loadShape("bomb.svg");
    locationBomb4 = new PVector(xB4,yB4);
    println(locationBomb4.x+"BBB"+locationBomb4.y);
    shape(bomb, locationBomb4.x, locationBomb4.y, wB, hB);
    if((location.y <= locationBomb4.y + hB) && (location.y >= locationBomb4.y - hB) && (!(location.x <= locationBomb4.x - wB)) && (!(location.x >= locationBomb4.x + wB))) {
      gameState=3;
      randomBom();
      
    }
  }
  
  void randomBom(){
    xB=random(wCanvas);
    yB=random(hCanvas);
    xB2=random(wCanvas);
    yB2=random(hCanvas);
    xB3=random(wCanvas);
    yB3=random(hCanvas);
    xB4=random(wCanvas);
    yB4=random(hCanvas);
  }
 
}