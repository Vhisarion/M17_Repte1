int speedx = 2; // Pixels per refresc
int speedy = 2;
int x = 0;
int y = 0;
int imgWidth = 160;
int imgHeight = 82;
PImage img;

void setup() {
  frameRate(60);
  size(1280, 640); 
  // Iniciem al centre de la finestra
  x = width/2;
  y = height/2;
  // Fons negre
  background(0,0,0);
  
  // Preparem la imatge del dvd
  img = loadImage("dvd.png");
  img.resize(imgWidth, imgHeight);
}

void draw() {
  
  
  // Comprobem marges
  if (x + speedx + imgWidth > width || x + speedx < 0)  {
    speedx *= -1;
    tint(random(255),random(255),random(255));
  } 
  
  if (y + speedy + imgHeight > height || y + speedy < 0) {
    speedy *= -1;
    tint(random(255),random(255),random(255));
  }
  
  x += speedx;
  y += speedy;
  
  // Eliminem la imatge anterior i pintem la nova
  clear(); 
  image(img, x, y);
  //println("x: " + x + " - y: " + y);
}
