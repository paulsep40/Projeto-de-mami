////////////// Cenário e Avião ////////// //<>//

PImage c1, c2, c3, aviao, aviao_e, aviao_r;
float y, percent, x_aviao, y_tiro;
int r_image, i, j;
boolean tiro;

////////////////////////////////////////

////////////// Inimigos/////////////



void setup() {

  size(720, 480);
  c1 = loadImage("c1.jpg");
  aviao= loadImage("aviao.png");
  aviao_e= loadImage("aviao_e.png");
  aviao_r= loadImage("aviao_r.png");
  y=0;
  percent=1;
  x_aviao=width/2;
  y_tiro=420;
  tiro=false;
}



void draw() {

/////////////// CENÁRIO///////////////////////////
  cenario();


/////////////// AVIÃO///////////////////////////

  funcao_tiro();
  
  controles();
  
}


void keyPressed(){
  if(key==' '){
    tiro=true;
  
  }
}
