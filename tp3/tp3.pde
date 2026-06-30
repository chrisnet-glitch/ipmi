//Link- https://youtube.com/shorts/T9mVgFQeqcM?si=3WW9YlYODCWO2J3n

float separacion = 1.4;   
float inclinacion = 1.6; 
float angulo = radians(6); 
int columnas = 11;
int filas = 11;
float tamCelda = 190.0 / 11.0; 

float centroX = 595.0;
float centroY = 200.0;

PImage img;
int estado = 0; 

void setup() {
  size(800, 400); 
  img = loadImage("Ilusiondecuadrado.jpg"); 
}

void mousePressed() {
  estado = 1; 
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    estado = 0; 
  }
}

void draw() {
  background(255);
  image(img, 0, 0, 400, 400);
  
  fill(0);
  quad(396, 5, 782, 5, 782, 395, 396, 392);  
  fill(219, 176, 111);
  quad(399, 9, 780, 9, 779, 392, 399, 389);
  
  Grilla(398, 9, angulo, 1, centroX, centroY, columnas, filas, tamCelda, separacion, inclinacion);  
  Grilla(589, 9, -angulo, -1, centroX, centroY, columnas, filas, tamCelda, separacion, inclinacion);  
  Grilla(398, 200, -angulo, -1, centroX, centroY, columnas, filas, tamCelda, separacion, inclinacion); 
  Grilla(589, 200, angulo, 1, centroX, centroY, columnas, filas, tamCelda, separacion, inclinacion);

}

float obtenerGris(float dI, float dJ) {
  
  float distCuadrada = (dI > dJ) ? dI : dJ;
  
  float gris;
  if (distCuadrada < 5) {
    gris = map(distCuadrada, 0, 5, 20, 245);
  } else {
    gris = map(distCuadrada, 5, 10, 245, 20);
  }
  
  return gris;
}

float Rotacion(float rotBase) {
  if (estado == 1) {
    return map(mouseX, 0, width, -PI, PI);
  } else {
    return rotBase;
  }
}

void Grilla(float posX, float posY, float angulo, int sentido, float centroX, float centroY, int columnas, int filas, float tamCelda, float separacion, float incBase) {
  noStroke(); 
  for (int i = 0; i < columnas; i = i + 1) { 
    for (int j = 0; j < filas; j = j + 1) {
      float x = posX + (tamCelda * i) + (tamCelda / 2.0);
      float y = posY + (tamCelda * j) + (tamCelda / 2.0);
      
      float rotacionFinal = Rotacion(angulo);
     
      
      float distX = x - centroX;
      if (distX < 0) { distX = -distX; }
      float distY = y - centroY;
      if (distY < 0) { distY = -distY; }
    
      float gris = obtenerGris(distX / tamCelda, distY / tamCelda);
      fill(gris);
      
      push();
      translate(x, y);
      rotate(rotacionFinal);
      
      
      float s = separacion; 
      float inc = incBase * sentido; 
      
      quad(-tamCelda/2.0 + s - inc, -tamCelda/2.0 + s,
           tamCelda/2.0 - s - inc, -tamCelda/2.0 + s,
           tamCelda/2.0 - s + inc,  tamCelda/2.0 - s,
          -tamCelda/2.0 + s + inc,  tamCelda/2.0 - s);
      pop();
    } 
  }
}
//Link- https://youtube.com/shorts/T9mVgFQeqcM?si=3WW9YlYODCWO2J3n
