//Ariadna Jazmin Pedernera
//legajo:125656/7
//comision 1

PImage cuadro;

int desplazar;

void setup() {

size(800, 400);

cuadro=loadImage("Cubismo.png");//cargue la imagen
desplazar=width/2;

}

void draw() {

background(255);

image(cuadro, 0, 0, 400, 400);

//fondo

strokeWeight(2);

fill(97, 64, 81);//bordo

quad(0 + desplazar, 0, 57 + desplazar, 0, 57 + desplazar, 146, 0 + desplazar, 164);

fill(255, 165, 0);//naranja claro

quad(56 + desplazar, 0, 104 + desplazar, 0, 106 + desplazar, 133, 57 + desplazar, 146);

fill(234, 213,133);//amarillo claro

quad(104 + desplazar, 0, 195 + desplazar, 0, 195 + desplazar, 109, 106 + desplazar, 133);

fill(150, 150, 150);//gris oscuro

rect(195 + desplazar, 0, 300 + desplazar, 110);

fill(206, 210, 210);//gris claro

rect(300 + desplazar, 0, 400 + desplazar, 108);

fill(119, 46, 40);//bordo 1

quad(0 + desplazar, 160, 57 + desplazar, 146, 55 + desplazar, 400, 0 + desplazar, 400);

quad(198 + desplazar, 383, 292 + desplazar, 380, 292 + desplazar, 400, 198 + desplazar, 400);

fill(100, 140, 180);//gris azulado

quad(57 + desplazar, 146, 165 + desplazar, 118, 161 + desplazar, 305, 55 + desplazar, 310);

fill(175, 147, 155);//rosa palid0 claro

triangle(330 + desplazar, 106, 369 + desplazar, 103, 332 + desplazar, 280);

fill(181, 162, 163);//rosa palidp intermedio

quad(370 + desplazar, 103, 400 + desplazar, 100, 400 + desplazar, 218, 350 + desplazar, 200);

fill(94, 64,82);//bordo  2

quad(350 + desplazar, 200, 400 + desplazar, 218, 400 + desplazar, 400, 300 + desplazar, 400);

fill(145, 178, 153);//verde claro

quad(271 + desplazar, 109, 330 + desplazar, 106, 331 + desplazar, 308, 266 + desplazar, 308);

fill(219, 116, 109);//rosa fuerte

quad(268 + desplazar, 307, 334 + desplazar, 305, 343 + desplazar, 320, 260 + desplazar, 324);

fill(76, 28, 36);//bordo oscuro

quad(262 + desplazar, 324, 343 + desplazar, 320, 366 + desplazar, 350, 280 + desplazar, 358);

fill(0);//negro

quad(262 + desplazar, 325, 199 + desplazar, 331, 200 + desplazar, 360, 280 + desplazar, 358);

fill(143, 83, 98);//rosa oscuro

quad(280 + desplazar, 358, 365 + desplazar, 349, 385 + desplazar, 378, 290 + desplazar, 379);

fill(100, 140, 180);//gris azulado

quad(200 + desplazar, 360, 280 + desplazar, 358, 290 + desplazar, 379, 200 + desplazar, 382);

fill(225, 221, 230);//blanco rosaseo

quad(86 + desplazar, 346, 197 + desplazar, 298, 200 + desplazar, 382, 113 + desplazar, 382);

fill(255, 128, 0);//naranja fuerte

quad(56 + desplazar, 309, 128 + desplazar, 307, 137 + desplazar, 325, 87 + desplazar, 348);

fill(255, 191, 12);//amarillo puro

triangle(16 + desplazar, 381, 56 + desplazar, 308, 87 + desplazar, 346);

fill(145 ,178 ,153);//verde claro

triangle(87  + desplazar, 347, 16 + desplazar, 381, 112 + desplazar, 382);

fill(76, 28, 36);//bordo oscuro

quad(55 + desplazar, 382, 200 + desplazar, 382, 200 + desplazar, 400, 55 + desplazar, 400);

fill(119, 46, 40);//bordo 1

quad(292 + desplazar, 380, 350 + desplazar, 380, 350 + desplazar, 400, 292 + desplazar, 400);

fill(0);//negro

beginShape();
vertex(16 + desplazar, 379);
vertex(16 + desplazar, 400);
endShape(CLOSE);

beginShape();
vertex(385 + desplazar, 379);
vertex(385 + desplazar, 400);
endShape(CLOSE);



//figura 

strokeWeight(3);

fill(45, 79, 102);//azul oscuro

triangle(195 + desplazar, 40, 195 + desplazar, 62, 139 + desplazar, 51);

fill(255, 249, 224);//amarillo palido

triangle(195 + desplazar, 40, 248 + desplazar, 51, 195 + desplazar, 62);

fill(238, 60, 35);//naranja

quad(138 + desplazar, 53, 195 + desplazar, 62, 195 + desplazar, 84, 168 + desplazar, 94);

fill(0);//negro

triangle(195 + desplazar, 64, 244 + desplazar, 53, 195 + desplazar, 84);

fill(255, 212, 0);//amarillo intermedio

triangle(168 + desplazar, 94, 195 + desplazar, 84, 195 + desplazar, 164);

fill(127, 68, 116);//violeta oscuro

triangle(195 + desplazar, 84, 248 + desplazar, 52, 195 + desplazar, 164);

fill(212, 224, 230);//gris muy claro

triangle(168 + desplazar, 98, 164 + desplazar, 151, 195 + desplazar, 164);

fill(0);//negro

triangle(240 + desplazar , 76, 235 + desplazar, 154 , 195 + desplazar, 165);

fill(255, 212, 0);//amarillo intermedio

triangle(164 + desplazar, 152, 150 + desplazar, 185, 195 + desplazar, 165);

triangle(164 + desplazar, 152, 110 + desplazar, 191, 150 + desplazar, 185);

triangle(107 + desplazar, 192, 148 + desplazar, 187, 97 + desplazar, 226);

fill(255, 128, 0);//naranja fuerte

triangle(97 + desplazar, 228, 148 + desplazar, 188, 125 + desplazar, 238);

fill(255, 251, 241);//blanco opaco

quad(150 + desplazar, 187, 196 + desplazar, 166, 198 + desplazar, 251, 126 + desplazar, 239); 

fill(70, 130, 180);// azul mas claro

triangle(97 + desplazar, 230, 118 + desplazar, 288, 198 + desplazar, 251);

fill(0);//negro

triangle(118 + desplazar, 288, 198 + desplazar, 254, 157 + desplazar, 353);

fill(45,79,102);//azul oscuro

triangle(156 + desplazar, 353, 199 + desplazar, 255, 198 + desplazar, 356);

fill(131, 197, 190);//verde intermedio

triangle(195+ desplazar, 165, 261 + desplazar, 202, 197 + desplazar, 217);

fill(88, 122, 104);//verde oscuro

triangle(234 + desplazar, 152, 262 + desplazar, 200, 198 + desplazar, 165);

fill(0);//negro

triangle(234 + desplazar, 155, 290 + desplazar, 192, 261 + desplazar, 202);

fill(110, 24, 34);

quad(262 + desplazar, 204, 292 + desplazar, 194, 300 + desplazar, 226, 252 + desplazar, 245);

fill(254, 80, 0);//naranja

triangle(198 + desplazar, 217, 261 + desplazar, 204, 198 + desplazar, 253);

fill(255, 0, 0);//rojo

triangle(198 + desplazar, 252, 261 + desplazar, 205, 251 + desplazar, 245);

fill(239, 184, 16);//mostaza claro

triangle(199 + desplazar, 252, 251 + desplazar, 246, 234 + desplazar, 306);

quad(242 + desplazar, 277, 288 + desplazar, 284, 254 + desplazar, 334, 234 + desplazar, 306);

quad(252 + desplazar, 244, 300 + desplazar, 227, 288 + desplazar, 284, 244 + desplazar, 278);

fill(254, 80, 0);//naranja

quad(199 + desplazar, 254, 200 + desplazar, 355, 240 + desplazar, 355, 253 + desplazar, 334);

fill(255, 212, 0);//amarillo intermedio

triangle(240 + desplazar, 78, 290 + desplazar, 72, 276 + desplazar, 90);

fill(127, 68, 116);//violeta oscuro

triangle(240 + desplazar, 80, 274 + desplazar, 91, 236 + desplazar, 106);

fill(212, 126, 48);//canela

triangle(276 + desplazar, 93, 281 + desplazar, 112, 297 + desplazar, 108);

fill(255, 165, 0);//naranja claro

triangle(277 + desplazar, 91, 291 + desplazar, 73, 298 + desplazar, 106);

fill(255, 128, 0);//naranja fuerte

quad(249 + desplazar, 182, 280 + desplazar, 112, 298 + desplazar, 107, 260 + desplazar, 200);

fill(206, 210, 210);//gris claro

stroke(0);

beginShape();
vertex(237 + desplazar, 156);
vertex(237 + desplazar, 105);
vertex(276 + desplazar, 92);
vertex(278 + desplazar, 114);
vertex(254 + desplazar, 166);
endShape(CLOSE);

}

void mousePressed(){
  
println(mouseX, mouseY);
}
