float x_Inimigo1, x_Inimigo2, x_Inimigo3;
float y_Inimigo1, y_Inimigo2, y_Inimigo3;

PImage c1;

float angle1, velAngulo1;
float angle2, velAngulo2;
float angle3, velAngulo3;

float randomico;

float percent;
void setup() {
  size(720, 480);
  c1 = loadImage("c1.jpg");
  y_Inimigo1=random(-20, -10);
  y_Inimigo2=y_Inimigo1-(int(random(180, 200)));
  y_Inimigo3=y_Inimigo2-(int(random(180, 200)));
  rectMode(CENTER);
  image(c1, 0, 0);
  percent=1;
  velAngulo1=random(0.01, 0.05);
  velAngulo2=random(0.01, 0.05);
  velAngulo3=random(0.01, 0.05);
}


void draw() {
  image(c1, 0, 0);
  
  inimigo1();
  inimigo2();
  inimigo3();
  //println("inimigo1:", y_Inimigo1,"; inimigo2:", y_Inimigo2, "; inimigo3:", y_Inimigo3);

}
  
