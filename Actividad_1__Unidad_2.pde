float intensidad = 0;
boolean aumentar = true;
float rectX = 200;
float rectY = 200;
float rectWidth = 100;
float rectHeight = 60;
float rotationAngle = 0;
float scaleX = 1.0;
float scaleY = 1.0;
float shearX = 0;
float shearY = 0;

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
   float rojo = random(0, 255);
  float verde = random(0, 255);
  float azul = random(0, 255);
  background(intensidad, 0, intensidad);
  stroke(intensidad, 0,0);
  fill(rojo, verde, azul);
  translate(rectX, rectY);
  rotate(rotationAngle);
  scale(scaleX, scaleY);
  shearX(shearX);
  shearY(shearY);
  rect(-50, -50, 100 , 100);
}

void keyPressed() {
  if (key == 't') { // Traslación con tecla 't'
    rectX += 10;
  } else if (key == 'e') { // Escalamiento con tecla 'e'
    scaleX *= 1.1;
    scaleY *= 1.1;
  } else if (key == 'r') { // Rotación con tecla 'r'
    rotationAngle += radians(10);
  } else if (key == 's') { // Sesgado con tecla 's'
    shearX += 0.1;
  } else if (key == 'd') { // Sesgado inverso con tecla 'd'
    shearY -= 0.1;
  }
  if (intensidad == 255){
    aumentar = false;
  }else if (intensidad == 255 ){
    aumentar = true;
  }
  
  if (aumentar ){
      intensidad += 1;
  }else {
    intensidad -= 1;
  }
}
