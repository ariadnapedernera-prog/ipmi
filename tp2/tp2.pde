PImage titulo;
PImage paralela;
PImage once;
PImage mike;
PImage will;
PImage dustin;
PImage lucas;
PImage max;
PImage steve;
PImage nancy;
PImage jonathan;
PImage hopper;
PImage joyce;
PImage vecna;
PImage finalImg;

PFont fuente;

int letras;

int estado;

boolean iniciar;

int contador=0;

int tiempo=600;

float alpha=0;

float finalY=-480;

boolean transicionando=false;

//movimiento imágenes
float xIzq=-320;
float xDer=640;

//movimiento textos
float textoY=500;

void setup() {
  
size(640, 480);

fuente = loadFont("ArialNarrow-BoldItalic-50.vlw");
textFont(fuente);

titulo = loadImage("Titulo.jpg");
paralela = loadImage("Paralela.jpg");
once = loadImage("once.jpg");
mike = loadImage("Mike Wheeler.jpg");
will = loadImage("Will Byers.jpg");
dustin = loadImage("Dustin Henderson.jpg");
lucas = loadImage("Lucas Sinclair.jpg");
max = loadImage("Max Mayfield.jpg");
steve = loadImage("Steve Harrington.jpg");
nancy = loadImage("Nancy Wheeler.jpg");
jonathan = loadImage("Jonathan Byers.jpg");
hopper = loadImage("Jim Hopper.jpg");
joyce = loadImage("Joyce Byers.jpg");
vecna = loadImage("Vecna.jpg");
finalImg = loadImage("Final.jpg");

}

void draw() {

background(0);

//BOTON PLAY
if (estado==1 || estado==8) {
fill(255);

}

//PANTALLA 1

if (estado==0 || transicionando) {

tint(255, 255-alpha);
image(titulo, 0, 0, width, height);

tint(255, alpha);
image(paralela, 0, 0, width, height);

noTint();

if (estado==0 && transicionando==false) {

fill(255, 0, 0);
rect(240, 390, 160, 50, 10);

fill(255);

textAlign(CENTER, CENTER);
textSize(28);
text("PLAY", 320, 415);

}
}
//PANTALLA 2

if (estado==1 && !transicionando) {

movimientoTexto();

image(paralela, 0, 0, width, height);

fill(0, 0, 0, 230);
rect(20, textoY, 250, 430, 15);

fill(255, 0, 0);
textSize(20);

escribirTitulo("¿DE QUE TRATA?", 35, textoY + 30);

fill(255);

textSize(20);

escribirTexto(
"La serie Stranger Things mezcla ciencia ficcion, terror, misterio y aventura.\nToda la historia gira alrededor de Hawkins y el Mundo del Reves.\nWill desaparece y sus amigos conocen a Eleven.\nAparecen criaturas como Demogorgon, Mind Flayer y Vecna.\nLa amenaza termina poniendo en peligro al mundo entero.",
35, textoY + 70, 200, 300);

}

//PANTALLA 3

if (estado==2) {

movimientoHorizontal();

image(once, xIzq, 0, 320, 480);
image(mike, xDer, 0, 320, 480);

textosHorizontal(

"ELEVEN",
"Es una chica con poderes un poco psiquicos que escapo de un laboratorio secreto.",

"MIKE WHEELER",
"Es el lider del grupo y desarrolla una relacion muy cercana con Eleven.");

}

//PANTALLA 4

if(estado==3) {

movimientoHorizontal();

image(will, xIzq, 0, 320, 480);
image(dustin, xDer, 0, 320, 480);

textosHorizontal(

"WILL BYERS",
"Su desaparicion inicia toda la historia y queda conectado con el Mundo del Reves.",

"DUSTIN HENDERSON",
"Es el mas gracioso del grupo y amante de la ciencia y la tecnologia.");

}

//PANTALLA 5

if (estado==4) {

movimientoHorizontal();

image(lucas, xIzq, 0, 320, 480);
image(max, xDer, 0, 320, 480);

textosHorizontal(

"LUCAS SINCLAIR",
"Practico y valiente. Siempre ayuda a sus amigos.",

"MAX MAYFIELD",
"Independiente, fuerte y protagonista de una trama muy intensa.");

}

//PANTALLA 6

if (estado==5) {

movimientoHorizontal();

image(steve, xIzq, 0, 320, 480);
image(nancy, xDer, 0, 320, 480);

textosHorizontal(

"STEVE HARRINGTON",
"Protector, divertido y uno de los personajes mas queridos.",

"NANCY WHEELER",
"Inteligente y decidida. Investiga los misterios de Hawkins.");

}

//PANTALLA 7

if (estado==6) {

movimientoHorizontal();

image(jonathan, xIzq, 0, 320, 480);
image(hopper, xDer, 0, 320, 480);

textosHorizontal(

"JONATHAN BYERS",
"Introvertido, sensible y apasionado por la fotografia.",

"JIM HOPPER",
"Jefe de policia y figura paterna para Eleven.");

}

//PANTALLA 8

if (estado==7) {

movimientoHorizontal();

image(joyce, xIzq, 0, 320, 480);
image(vecna, xDer, 0, 320, 480);

textosHorizontal(

"JOYCE BYERS",
"Madre valiente que nunca deja de buscar a su hijo.",

"VECNA",
"Gran villano conectado con el origen del Mundo del Reves.");

}

//PANTALLA 9

if (estado==8) {
 
if (finalY<0) {

finalY+=4;

}

movimientoTexto();

image(finalImg, 0, finalY, width, height);

fill(0, 0, 0, 230);
rect(20, textoY, 250, 430, 15);

fill(255, 0, 0);
textSize(20);

escribirTitulo("FINAL", 35, textoY + 30);
fill(255);

textSize(15);
escribirTexto("Stranger Things todavía no terminó oficialmente.\nLa quinta temporada va a ser la última, pero todavía no se estrenó completa.\nLo último que se vio al final de la temporada 4 es que:\n* Vecna sobrevive después de la pelea.\n* Hawkins queda destruido y empieza a mezclarse con el Mundo del Revés.\n* Se abren enormes grietas en la ciudad.\n* Los personajes se reúnen para prepararse para la batalla final.", 35, textoY + 70, 200, 300);

fill(255, 0, 0);
rect(450, 390, 150, 50, 10);

fill(255);
textAlign(CENTER, CENTER);
textSize(24);
text("RESET", 525, 415);

}

//CAMBIO AUTOMATICO

if (iniciar==true && estado>0 && estado<8) {

contador++;

if (contador>tiempo) {

estado++;

reiniciarAnimacion();

letras=0;

contador=0;

}
}

if (transicionando) {

alpha+=3;

if (alpha>=255) {

alpha=255;

transicionando=false;

estado=1;

iniciar=true;
}
}

letras +=1;

}

//MOVIMIENTO DE IMAGENES

void movimientoHorizontal() {

if (contador<200) {

xIzq+=4;
xDer-=4;

if (xIzq>0) {
xIzq = 0;

}

if (xDer<320) {
xDer = 320;
}
}

else if (contador>450) {

xIzq-=4;
xDer+=4;

}
}

//MOVIMIENTO DE TEXTO

void movimientoTexto() {

if (contador<150) {

textoY-=4;

if (textoY<20) {
textoY=20;
}
}

else if (contador>450) {
textoY+=4;

}
}

//TEXTOS DE PERSONAJES

void textosHorizontal(
String nombre1,
String texto1,

String nombre2,
String texto2) {

movimientoTexto();

fill(0, 0, 0, 230);

rect(15, textoY + 300, 290, 125, 12);
rect(335, textoY + 300, 290, 125, 12);

fill(255, 0, 0);

textSize(20);

escribirTitulo(nombre1, 30, textoY + 325);
escribirTitulo(nombre2, 350, textoY + 325);

fill(255);

textSize(20);

escribirTexto(texto1, 30, textoY + 350, 250, 80);
escribirTexto(texto2, 350, textoY + 350, 250, 80);

}

//TEXTO

void escribirTexto(String texto, float x, float y, float ancho, float alto) {

textAlign(LEFT);

int cantidad = min(letras/1, texto.length());

String visible=texto.substring(0, cantidad);

text(visible, x, y, ancho, alto);

}

//TITULOS

void escribirTitulo(String texto, float x, float y) {

textAlign(LEFT);

int cantidad = min(letras/2, texto.length());

String visible = texto.substring(0, cantidad);

text(visible, x, y);

}

//REINICIAR

void reiniciarAnimacion() {

xIzq = -320;
xDer = 640;

textoY = 500;

finalY = -480;

alpha = 0;

}

//CLICK

void mousePressed() {

//PLAY

if (estado==0 && mouseX>240 && mouseX<400 && mouseY>390 && mouseY<440) {

transicionando=true;

alpha=0;

letras=0;

contador=0;

}

//RESET

if (estado==8 && mouseX>450 && mouseX<600 && mouseY>390 && mouseY<440) {
  
estado=0;

iniciar=false;

letras = 0;

contador=0;

reiniciarAnimacion();

}
}

//MOUSE CLICKED

void mouseClicked() {
mousePressed();

}
