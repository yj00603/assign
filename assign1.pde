    float w=640,h=480;
  float soldierX,soldierY;
  float speedX=2;
  float robotX,robotY;
  float lineX,lineDistance,lineMove;


  
  PImage bg,life,groundhog,robot,soil,soldier;
 
void setup() {
  
	size(640,480,P2D);
  
  bg = loadImage("img/bg.jpg");
  life = loadImage("img/life.png");
  groundhog = loadImage("img/groundhog.png");
  robot = loadImage("img/robot.png");
  robotX = floor(random(3,8))*80;
  robotY = floor(random(3,6))*80;
  lineX = robotX+20;
  soil = loadImage("img/soil.png");
  soldier = loadImage("img/soldier.png");
  soldierY= floor(random(3,6))*80;

}

void draw() {
  //background
  image(bg,0,0);
  image(soil,w*0,h/3);
  image(life,10,10);
  image(life,80,10);
  image(life,150,10);

  
  //sun
  stroke(255,255,0);
  strokeWeight(5);
  fill(253, 184,19);
  ellipse(w-50,h*0+50,120,120);
  
  //grassland
  noStroke();
  fill(124,204,25);
  rect(w*0,h/3-15,w,15);
  
  image(groundhog,w/2-40,h/6);
  
  //soilier
  image(soldier,soldierX,soldierY);
  soldierX+= speedX;
  soldierX %= 720;
  
  //robot
  image(robot,robotX,robotY);
  
  //line
  strokeWeight(10);
  stroke(255,0,0);
  line(lineX-lineDistance,robotY+37,lineX-40-lineDistance,robotY+37);
  lineMove = lineMove+2;
  lineDistance = lineMove%160;
  
  
}
