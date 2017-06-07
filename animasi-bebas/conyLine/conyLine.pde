void setup(){
  size(600,600);
  background(255);
}

void draw(){
  stroke(0);
  fill(60);
  strokeWeight(2);
  ellipse(125,178,160,50);
  fill(255);
  strokeWeight(1);
  ellipse(125,150,100,100);
  fill(255);
  arc(100,100,30,100,PI-0.42,TWO_PI,OPEN);
  arc(150,100,30,100,PI,TWO_PI+0.42,OPEN);
  
  fill(255,127,127);
  arc(100,100,10,70,PI-0.3,TWO_PI+0.1,CHORD);
  arc(150,100,10,70,PI-0.1,TWO_PI+0.3,CHORD);
  
  
  fill(0);
  ellipse(114,130,5,5);
  ellipse(139,130,5,5);
  
  noFill();
  ellipse(127,145,10,5);
  
  line(127,147,128,166);
  
  fill(216,97,97);
  arc(127,156,20,30,0,PI,CHORD);
  
  fill(255,127,127);
  arc(127,162,16,17,0,PI,OPEN);
  noStroke();
  ellipse(108,145,15,5);
  ellipse(145,145,15,5);
  stroke(0);
  
  fill(60);
  noStroke();
  rect(85,191,75,10);
  
  stroke(0);
  fill(255);
  ellipse(90,195,40,25);
  ellipse(160,195,40,25); 
}