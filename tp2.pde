PImage inicio;
PImage protagonista1;
PImage protagonista2;
PImage musica;
PImage direccion;

PFont fuente;

float movtext1=0;
float movtext2=0;
float movtext3=0;
float movtext4=0;
float movtext5=0;

void setup() {
  size(600, 400);

  fuente = loadFont("BlackadderITC-Regular-48.vlw");
  textFont(fuente);

  inicio= loadImage("Frame1.jpg");
  protagonista1= loadImage("Frame2.jpg");
  protagonista2= loadImage("Frame3.jpg");
  musica= loadImage("Frame4.jpg");
  direccion= loadImage("Frame5.jpg");
  textAlign(CENTER);
  textFont(fuente);
  textSize(25);

  frameRate(25);

  movtext1 = 350;
  movtext2 = 1000;
  movtext3 = 1000;
  movtext4 = 1000;
  movtext5 = 1000;
}

void draw() {
  image(inicio, 0, 0);
  println(frameCount);
  if (frameCount >= 0) {
    image(inicio, 0, 0);
  }
  if (frameCount >= 60) {
    image(protagonista1, 0, 0);
  }
  if (frameCount >= 120) {
    image(protagonista2, 0, 0);
    if (frameCount >= 180) {
      image(musica, 0, 0);
      if (frameCount >= 240) {
        image(direccion, 0, 0);
      }
    }
  }
  text("Director", 300, movtext1);
  text("Fumito Ueda", 300, movtext1+30);
  text("Produccion", 150, movtext1+200);
  text("Kazuma Kizuka", 150, movtext1+230);
  text("Composer", 450, movtext1+400);
  text("Yurinakayam", 450, movtext1+430);
  text("Audio Director", 300, movtext1+600);
  text("Keiichi Kitahara", 300, movtext1+630);
  text("Music Production", 450, movtext1+800);
  text("Kow Oyani", 450, movtext1+830);
  text("Game Desing", 150, movtext1+1000);
  text("Yasutaka Asakura", 150, movtext1+1030);
  text("Character´s", 450, movtext1+1200);
  text("Wander", 450, movtext1+1230);
  text("Agro", 450, movtext1+1260);
  text("I C O", 450, movtext1+1290);
  text("Bluepoint Games", 300, movtext1+1400);

  movtext1 = movtext1 -5;
}