void setup() {
  // Creem una finestra de mida 600x600
  size(600, 600); 
  
  // Canviem el color de fons
  background(255, 204, 0);
  
  // Creem un cercle amb color i gruix definits
  fill(204, 102, 0);
  strokeWeight(4);
  ellipse(30,30,40,40);
  
  // Creem un quadrat amb color i gruix diferents
  fill(255, 0, 0);
  strokeWeight(3);
  rect(100,15,40,40);
  
  // Creem un triangle amb color i gruix diferents
  fill(0,0,255);
  strokeWeight(1);
  stroke(0,255,0);
  triangle(170, 15, 200, 15, 185, 45);  
  
  // Preparem les propietats de l'objecte que es pintarà sota el ratolí
  fill(255, 0, 0);
  strokeWeight(3);
}

void draw() {
  rect(mouseX-20,mouseY-20,40,40);
}
