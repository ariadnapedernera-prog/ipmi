// Ariadna Jazmin Pedernera Garcia
// Comisión:1
//Legajo:125656/7
//obra 38
// Link al video:https://youtu.be/b8y0rqDp2hM

PImage referencia;

//Variables del patron
float rotacion = 0.0;
int numdeAnillos = 16;
float radioMax = 260;

//Variables de interacción de expansion, controla cuanto se alejan los circulos del centro
float expansion = 0;
float expansionMax = 120;

//Esta variable indica que la expansion esta activa
boolean expandido = false;

void setup() {

size(800, 400);

referencia = loadImage("Puntos.PNG");

noStroke();

}

void draw() {

background(150);

//Expansión que aumenta gradualmente una vez hecho el click
if (expandido) {
if (expansion < expansionMax) {
expansion = expansion + 2;

}
} 

else {

//Cuando se reinicia vuelve a su estado inicial 
if (expansion > 0) {
expansion = expansion - 2;
}
}

//Fondo negro del lado derecho
fill(0);
rect(400, 0, 400, 400);

//Translada el cero al centro del patron
push();
translate(600, 200);

//Rotacion disponible para sus modificaciones despues
rotate(rotacion);
dibujarCirculos();
pop();

//Imagen de referencia y tapa los circulos que pasan al lado izquierdo
image(referencia, 0, 0, 400, 400);

}

//Funcion propia que no retorna un valor
//Se encarga de dibujar el patron y cumple con el ciclo for anidado 
void dibujarCirculos() {

fill(255);

//For externo que recorre el centro de todos los circulos
for (int anillo = 0; anillo <= numdeAnillos; anillo++) {

//Comprime todos los anillos hacia el centro
float factor = pow(anillo / float(numdeAnillos), 2);

//Calcula la distancia que hay de cada anillo al centro
float radio = map(factor, 0, 1, 8, radioMax);

//Expansión de anillos
float influencia = map(anillo, 0, numdeAnillos, 0.2, 1.8);

radio = radio + expansion * influencia;

//Cuando aumenta la cantidad de anillos aumenta la cantidad de circulos
int circulosPoranillo = 4 + anillo * 2;

float offset = 0;

//Desplaza los anillos par generar el efecto de que estan intercalandos
if (anillo % 2 == 0) {
offset = 2 / circulosPoranillo;
}

//For interno que dibuja los circulos de los anillos
for (int i = 0; i < circulosPoranillo; i++) {

float angulo = TWO_PI * i / circulosPoranillo + offset;

float x = radio * cos(angulo);
      
float y = radio * sin(angulo);

//Calcula la distancia al centro
float distCentro = dist(0, 0, x, y);

//Obtiene el tamaño correspondiente
float tam = calcularTamanio(distCentro);

ellipse(x, y, tam, tam);
}
}

//Circulo central fijo
ellipse(0, 0, 4, 4);
}

//Funcion que retorna un valor
float calcularTamanio(float distancia) {

return map(distancia, 0, radioMax, 0, 30);
}

//Click para activar la expansion 

void mousePressed() {
expandido = true;

}

//Laletra R reinicia la imagen
void keyPressed() {

if (key == 'r' || key == 'R') {

expandido = false;
expansion = 0;
rotacion = 0;
}
}
