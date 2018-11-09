///Protótipo Cenário
PImage c1;
float y, percent;



void setup() {

  size(720, 480);
  c1 = loadImage("c1.jpg");
  y=0;
  percent=1;
}


void draw() {

  imageMode(CORNER);
  image(c1, 0, y);

  image(c1, 0, y-c1.height);

  y=y+4*percent;

  if (y>480) {
    y=-0;
  }


/////////// velocidade cenário/////////////
  if (keyPressed) {

    if (keyCode==UP) {
      acelerar();
    }

    if (keyCode==DOWN) {
      freiar();
    }
  }
}




///////////// Funções //////////

void acelerar() {

  percent=percent*1.01;
  if (percent>3) {
    percent=3;
  }
    println("percent:", percent);
}



void freiar() {
  percent=percent*0.99;
  if (percent<1) {
    percent=1;
  }
  println("percent:", percent);
}