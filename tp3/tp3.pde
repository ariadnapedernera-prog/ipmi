// Ariadna Jazmin Pedernera Garcia
// Comisión: 1
// Legajo: 125656/7
// Obra 38
//Link del video:https://youtu.be/4a03mUidE4k

PImage referencia;

//Colores
color colorFondo;
color colorCirculos;

// Variables de la grilla
int filas = 11;
int columnas = 11;

//Variable para la interacción
boolean cambiarColor = false;

void setup() {

size(800, 400);

referencia = loadImage("Puntos.PNG");

colorFondo = color(0);
colorCirculos = color(255);

noStroke();

}

void draw() {

background(150);

//Fondo negro de la obra
fill(colorFondo);
rect(400, 0, 400, 400);

//Dibuja la obra
pushMatrix();
translate(600, 200);
rotate(radians(89));
dibujarGrilla(filas, columnas);
popMatrix();

//La imagen de referencia se dibuja al final para que quede arriba
image(referencia, 0, 0, 400, 400);

}

//Función propia que NO retorna valor
void dibujarGrilla(int cantFilas, int cantColumnas) {

for (int fila = 0; fila < cantFilas; fila++) {
for (int columna = 0; columna < cantColumnas; columna++) {

//La grilla ocupa más espacio para que desaparezcan los bordes negros
float x = map(columna, 0, cantColumnas - 1, -220, 220);
float y = map(fila, 0, cantFilas - 1, -220, 220);

//Desfase horizontal en filas pares
if (fila % 2 == 0) {
x = x + 16;

}
else {
x = x - 0;
}


//Distancia al centro
float distancia = dist(x, y, 0, 0);

//Tamaño de los círculos
float tam = calcularTamanio(distancia);

//Los acerca al centro
float mover = map(distancia, 0, 310, 0.75, 1.0);

fill(colorCirculos);

ellipse(x * mover, y * mover, tam, tam);
}
}
}

// Función que retorna un valor
float calcularTamanio(float distancia) {
return map(distancia, 0, 250, 8, 42);

}

//Mouse
void mousePressed() {
colorCirculos = color(random(255), random(255), random(255));
colorFondo = color(random(255), random(255), random(255));

}

//Teclado
void keyPressed() {
if (key == 'r' || key == 'R') {
colorCirculos = color(255);
colorFondo = color(0);

}
}
