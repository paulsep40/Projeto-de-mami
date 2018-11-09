//////// Protótipo Avião /////////// 

PImage aviao, aviao_e, aviao_r;
float x_aviao, y_tiro;
boolean tiro;

void setup() {

  size(720, 480);

  aviao= loadImage("aviao.png");
  aviao_e= loadImage("aviao_e.png");
  aviao_r= loadImage("aviao_r.png");
  x_aviao=width/2;
  y_tiro=420;
  tiro=false;
}



void draw() {
  background(255);
  
/////////////// AVIÃO///////////////////////////
  funcao_tiro();

  if (keyPressed) {
    /*if ((keyCode!=RIGHT)||(keyCode!=LEFT)||(keyCode!=UP)||(keyCode!=DOWN)) {
      padrao();
    }*/

    if (keyCode==LEFT) {
      virarE();
    }
    
    if (keyCode==RIGHT) {
      virarD();

    }
    
    if (key=='x') {
      padrao();
    }
       
  } 

  
  
  else {
    padrao();

    
  }

}

void keyPressed(){
  if(key=='x'){
    tiro=true;
  
  }
}

  /*void keyPressed(){
    if (key== 'x'){
      y_tiro=420;
      noStroke();
      fill(255,0,0);
      rectMode(CENTER);
      rect(x_aviao, y_tiro, 5,20);
      y_tiro=y_tiro-10;
     // padrao();
    }*/
    
  
  