PFont fuenteCambria;

PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6; 

String texto1 = "La película transcurre durante la Era de Hielo, cuando los animales migran para sobrevivir al frío extremo.";
String texto2 = "Durante la glaciación, Manny (un mamut solitario) y Sid (un perezoso torpe) encuentran a un bebé humano.";
String texto3 = "Decididos a devolverlo a su tribu, se les une Diego, uno de los dientes de sable, quien planea traicionarlos para comerse al bebé junto a su manda de dientes de sable.";
String texto4 = "Sin embargo, tras convivir y superar peligros en el viaje para llevar al bebé a su familia, los tres forman un fuerte lazo.";
String texto5 = "Al llegar a la trampa, Diego se arrepiente, confiesa la verdad y se sacrifica para salvar a Manny.";
String texto6 = "Finalmente, logran entregar el bebé a su padre sano y salvo, Diego sobrevive a sus heridas, y los tres animales deciden permanecer juntos como una manada.";

int pantalla = 1; 
int totalPantallas = 6; 
int tiempoEsperaInicial = 3000; 
int tiempoUltimoCambio = 0; 

String estado = "relato"; 

float progresoTransicion = 0.0; 
float botonX, botonY, botonAncho, botonAlto; 

boolean enTransicion = false; 

int gNumPantalla;
float gAlfa;
float gEscala;


void setup() {
  size(640, 480);
  imageMode(CENTER); 
  
  img1 = loadImage("Hera.jpg");
  img2 = loadImage("animales1.png");
  img3 = loadImage("animales2.jpg");
  img4 = loadImage("Hera2.jpg"); 
  img5 = loadImage("animales3.png");  
  img6 = loadImage("animales4.png");
  
  fuenteCambria = createFont("Cambria", 24); 
  
  tiempoUltimoCambio = millis(); 
  
  // Ubicación del botón
  botonAncho = 200;
  botonAlto = 50;
  botonX = width/2 - botonAncho/2;
  botonY = height/2 + 50;
}


void draw() {
  background(0); 
  textFont(fuenteCambria); 
  
  // ESTADO 1
  if (estado=="relato") {
    pushMatrix(); 
    

    if (pantalla == 1) {
      // Control de tiempo fijo para pantalla 1 (3000 milisegundos)
      if (millis() - tiempoUltimoCambio > 3000 && !enTransicion) {
        enTransicion = true;
      }
      
      if (!enTransicion) {
        gNumPantalla = 1;
        gAlfa = 255;
        gEscala = 1.0;
        dibujarContenidoPantalla();
      } else {
        // Pantalla 1 saliente
        gNumPantalla = 1;
        gAlfa = (1.0 - progresoTransicion) * 255;
        gEscala = 1.0 - (progresoTransicion * 0.4);
        dibujarContenidoPantalla();
        
        // Pantalla 2 entrante
        gNumPantalla = 2;
        gAlfa = progresoTransicion * 255;
        gEscala = 0.6 + (progresoTransicion * 0.4);
        dibujarContenidoPantalla();
      }
    } 
    
    else if (pantalla == 2) {
      // Control de tiempo fijo para pantalla 2 (3000 milisegundos)
      if (millis() - tiempoUltimoCambio > 3000 && !enTransicion) {
        enTransicion = true;
      }
      
      if (!enTransicion) {
        gNumPantalla = 2;
        gAlfa = 255;
        gEscala = 1.0;
        dibujarContenidoPantalla();
      } else {
        // Pantalla 2 saliente
        gNumPantalla = 2;
        gAlfa = (1.0 - progresoTransicion) * 255;
        gEscala = 1.0 - (progresoTransicion * 0.4);
        dibujarContenidoPantalla();
        
        // Pantalla 3 entrante
        gNumPantalla = 3;
        gAlfa = progresoTransicion * 255;
        gEscala = 0.6 + (progresoTransicion * 0.4);
        dibujarContenidoPantalla();
      }
    } 
    
    else if (pantalla == 3) {
      // Control de tiempo fijo para pantalla 3 (3000 milisegundos)
      if (millis() - tiempoUltimoCambio > 3000 && !enTransicion) {
        enTransicion = true;
      }
      
      if (!enTransicion) {
        gNumPantalla = 3;
        gAlfa = 255;
        gEscala = 1.0;
        dibujarContenidoPantalla();
      } else {
        // Pantalla 3 saliente
        gNumPantalla = 3;
        gAlfa = (1.0 - progresoTransicion) * 255;
        gEscala = 1.0 - (progresoTransicion * 0.4);
        dibujarContenidoPantalla();
        
        // Pantalla 4 entrante
        gNumPantalla = 4;
        gAlfa = progresoTransicion * 255;
        gEscala = 0.6 + (progresoTransicion * 0.4);
        dibujarContenidoPantalla();
      }
    } 
    
    else if (pantalla == 4) {
      // Control de tiempo fijo para pantalla 4 (3000 milisegundos)
      if (millis() - tiempoUltimoCambio > 3000 && !enTransicion) {
        enTransicion = true;
      }
      
      if (!enTransicion) {
        gNumPantalla = 4;
        gAlfa = 255;
        gEscala = 1.0;
        dibujarContenidoPantalla();
      } else {
        // Pantalla 4 saliente
        gNumPantalla = 4;
        gAlfa = (1.0 - progresoTransicion) * 255;
        gEscala = 1.0 - (progresoTransicion * 0.4);
        dibujarContenidoPantalla();
        
        // Pantalla 5 entrante
        gNumPantalla = 5;
        gAlfa = progresoTransicion * 255;
        gEscala = 0.6 + (progresoTransicion * 0.4);
        dibujarContenidoPantalla();
      }
    } 
    
    else if (pantalla == 5) {
      // Control de tiempo fijo para pantalla 5 (3000 milisegundos)
      if (millis() - tiempoUltimoCambio > 3000 && !enTransicion) {
        enTransicion = true;
      }
      
      if (!enTransicion) {
        gNumPantalla = 5;
        gAlfa = 255;
        gEscala = 1.0;
        dibujarContenidoPantalla();
      } else {
        // Pantalla 5 saliente
        gNumPantalla = 5;
        gAlfa = (1.0 - progresoTransicion) * 255;
        gEscala = 1.0 - (progresoTransicion * 0.4);
        dibujarContenidoPantalla();
        
        // Pantalla 6 entrante
        gNumPantalla = 6;
        gAlfa = progresoTransicion * 255;
        gEscala = 0.6 + (progresoTransicion * 0.4);
        dibujarContenidoPantalla();
      }
    } 
    
    else if (pantalla == 6) {
      // La última pantalla espera 5000 milisegundos antes de cambiar de estado
      if (millis() - tiempoUltimoCambio > 5000 && !enTransicion) {
        estado = "final";
      }
      
      gNumPantalla = 6;
      gAlfa = 255;
      gEscala = 1.0;
      dibujarContenidoPantalla();
    }

    // CONTROL DE TRANSICIÓN
    if (enTransicion) {
      progresoTransicion += 0.025;
      if (progresoTransicion >= 1.0) {
        progresoTransicion = 0.0;
        pantalla++; 
        enTransicion = false;
        tiempoUltimoCambio = millis();
      }
    }
    
    popMatrix(); 
  }
  
  //Pantalla Final
  else if (estado=="final") {
    gNumPantalla = totalPantallas;
    gAlfa = 255;
    gEscala = 1.0;
    dibujarContenidoPantalla();
    
    fill(0, 220); 
    rect(0, 0, width, height); 
    
    fill(#FFFFFF); 
    textAlign(CENTER, CENTER); 
    textSize(26); 
    text("Fin de la presentación", width/2, height/2 - 40); 
    
    // Botón para reiniciar
    if (mouseX >= botonX && mouseX <= botonX + botonAncho && mouseY >= botonY && mouseY <= botonY + botonAlto) {
      fill(#4CAF50); 
    } else {
      fill(#2E7D32); 
    }
    rect(botonX, botonY, botonAncho, botonAlto, 10); 
    
    fill(#FFFFFF); 
    textSize(18);
    text("REINICIAR", width/2, botonY + botonAlto/2); 
    
    textAlign(LEFT, BASELINE); 
  }
}



void dibujarContenidoPantalla() {
  pushMatrix(); 
  
  // Posición fija centralizada
  translate(width/2, height/2);
  scale(gEscala);
  translate(-width/2, -height/2);
  
  //
  if (gNumPantalla == 1) {
    if (img1 != null) {
      tint(255, gAlfa); 
      image(img1, 160, 240, 280, 400);
      noTint(); 
    }
    fill(255, gAlfa); 
    textSize(28); 
    text("La Era de Hielo", 320, 60, 290, 50); 
    textSize(20); 
    text(texto1, 320, 130, 290, 270); 
    
    // Línea 1
    stroke(255, gAlfa); 
    strokeWeight(3);
    line(20, 440, 620, 440);
    noStroke();
  } 
  
  else if (gNumPantalla == 2) {
    if (img2 != null) {
      tint(255, gAlfa); 
      image(img2, 160, 240, 280, 400);
      noTint(); 
    }
    fill(255, gAlfa); 
    textSize(20); 
    text(texto2, 320, 100, 290, 300); 
    
    // Línea 2
    stroke(255, gAlfa); 
    strokeWeight(3);
    line(20, 440, 620, 440);
    noStroke();
  } 
  
  else if (gNumPantalla == 3) {
    if (img3 != null) {
      tint(255, gAlfa); 
      image(img3, 160, 240, 280, 400);
      noTint(); 
    }
    fill(255, gAlfa); 
    textSize(20); 
    text(texto3, 320, 100, 290, 300); 
    
    // Línea 3
    stroke(255, gAlfa); 
    strokeWeight(3);
    line(20, 440, 620, 440);
    noStroke();
  } 
  
  else if (gNumPantalla == 4) {
    if (img4 != null) {
      tint(255, gAlfa); 
      image(img4, 160, 240, 280, 400);
      noTint(); 
    }
    fill(255, gAlfa); 
    textSize(20); 
    text(texto4, 320, 100, 290, 300); 
    
    // Línea 4
    stroke(255, gAlfa); 
    strokeWeight(3);
    line(20, 440, 620, 440);
    noStroke();
  } 
  
  else if (gNumPantalla == 5) {
    if (img5 != null) {
      tint(255, gAlfa); 
      image(img5, 160, 240, 280, 400);
      noTint(); 
    }
    fill(255, gAlfa); 
    textSize(20); 
    text(texto5, 320, 100, 290, 300); 
    
    // Línea 5
    stroke(255, gAlfa); 
    strokeWeight(3);
    line(20, 440, 620, 440);
    noStroke();
  } 
  
  else if (gNumPantalla == 6) {
    if (img6 != null) {
      tint(255, gAlfa); 
      image(img6, 160, 240, 280, 400);
      noTint(); 
    }
    fill(255, gAlfa); 
    textSize(20); 
    text(texto6, 320, 100, 290, 300); 
    
    // Línea 6
    stroke(255, gAlfa); 
    strokeWeight(3);
    line(20, 440, 620, 440);
    noStroke();
  }
  
  popMatrix(); 
}


void mousePressed() {
  if (estado=="final") {
    if (mouseX >= botonX && mouseX <= botonX + botonAncho && mouseY >= botonY && mouseY <= botonY + botonAlto) {
      estado = "relato";
      pantalla = 1;
      enTransicion = false;
      progresoTransicion = 0.0;
      tiempoUltimoCambio = millis(); 
    }   
  }
}
