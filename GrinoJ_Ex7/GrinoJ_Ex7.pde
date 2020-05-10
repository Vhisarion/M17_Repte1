/* 
  RESPOSTES A LES PREGUNTES DEL REPTE:
  6- He utilitzat bucles per a omplir la finestra de figues

  FUNCIONAMENT DEL PROGRAMA 
  Canvia els patrons cada cop que fas click amb el mouse
*/




    PImage img;
    boolean state = false;

    void setup(){
      
      size(640, 640);
      img = loadImage("block.jpg");
      
      // Inicialitzem la finestra amb el primer patró
      /* ---------PRIMER PATRÓ------------- */
      for (int y = 0; y < 640; y+= 16) {
        for (int x = 0; x < 640; x+= 16) {
          fill(random(255),random(255),random(255));
          rect(x, y, 16, 16);
        }
      }
    }
    
    void draw() {}
   

    void mousePressed(){
      
      state = !state;
      if (state) {
        /* --------SEGON PATRÓ -------------- */
        // Utilitzem un bucle per a pintar la imatge en tota la pantalla
        for (int y = 0; y < 640; y+= 16) {
          for (int x = 0; x < 640; x+= 16) {
            image(img, x, y);
          }
        }
      } else {
        /* ---------PRIMER PATRÓ------------- */
        for (int y = 0; y < 640; y+= 16) {
          for (int x = 0; x < 640; x+= 16) {
            fill(random(255),random(255),random(255));
            rect(x, y, 16, 16);
          }
        }
      } 
    }
