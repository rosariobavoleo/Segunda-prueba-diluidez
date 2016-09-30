

PImage img;
int smallPoint, largePoint;
int pixelado;
int j=200;


void setup() {
  size(1151, 819);
  img = loadImage("imagen3.jpg");
  smallPoint = 25;
  largePoint = 50;
  imageMode(CENTER);
  noStroke();
  background(img);
  pixelado=1;
 
  
 
}

void draw() { 
 for (int i=0; i< pixelado; i++){ 
 
  float pointillize = map( mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width ));
  int y = int(random((img.height-j), img.height));
  color pix = img.get(x, y);
  fill(pix,128);
  rect(x, y, pointillize, pointillize);
  
 }
}
  
void keyPressed() {              
  
 if (keyCode == UP) {
   j= j+100;
  }
  if (keyCode == DOWN) {
   j= j-100;
  }
  
}