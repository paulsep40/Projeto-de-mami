////////////// Cenário e Avião ////////// //<>//
PFont age;
PImage capa, c1, c2, c3, aviao, aviao_e, aviao_r, heliD, heliE, imgGas, hudgas;
float y, percent, x_aviao, x_tiro, y_tiro;
int r_image, i, j;
int troca1, troca2, troca3;
boolean tiro;
float gasolina, xGasolina, yGasolina;

////////////////////////////////////////

////////////// Inimigos/////////////
float x_Inimigo1, x_Inimigo2, x_Inimigo3;
float y_Inimigo1, y_Inimigo2, y_Inimigo3;

float angle1, velAngulo1;
float angle2, velAngulo2;
float angle3, velAngulo3;

float randomico;

boolean vivo1, vivo2, vivo3;

int tela;

float pontuacao, pontuacaoMax;


void setup() {

  size(720, 480);
  capa = loadImage("capa.jpg");
  c1 = loadImage("c1.jpg");
  aviao= loadImage("aviao.png");
  hudgas= loadImage("hud.png");
  aviao_e= loadImage("aviao_e.png");
  aviao_r= loadImage("aviao_r.png");
  heliD=loadImage("heliD.png");
  heliE=loadImage("heliE.png");
  imgGas=loadImage("gas.png");
  age=createFont("Age.otf", 16);
  iniciaTudo();
}



void draw() {

  if (tela==0) {
    image(capa, 0, 0);
    textSize(22);
    textFont(age);

    if (pontuacao>pontuacaoMax) {

      pontuacaoMax=pontuacao;
      
    }


    fill(255, 255, 0);
    text("Pontuação Máxima: " + int(pontuacaoMax), 450, 160);
    fill(255);
    textSize(12);
    text("última Pontuação: " + int(pontuacao), 450, 175);
  }


  if (tela==1) {
    /////////////// CENÁRIO///////////////////////////
    cenario();
    gasolina();
    colisaoGasolina();

    /////////////// AVIÃO///////////////////////////

    funcao_tiro();

    controles();
    colisaoTiro();
    colisaoAviao();

    inimigo1();
    inimigo2();
    inimigo3();
    hud();
  }
}


void keyPressed() {
  if (key==' ') {
    if (tela==1) {
      tiro=true;
    }

    if (tela==0) {
      tela=1;
      iniciaTudo();
    }
  }
}
