////////////// AVIÃO //////////////////


void acelerar() {

  percent=percent*1.01;
  if (percent>3) {
    percent=3;
  }
  imageMode(CENTER);
  image(aviao, x_aviao, 420);
  println("percent:", percent, "; x_aviao:", x_aviao);
}



void freiar() {
  percent=percent*0.99;
  if (percent<1) {
    percent=1;
  }
  imageMode(CENTER);
  image(aviao, x_aviao, 420);
  println("percent:", percent, "; x_aviao:", x_aviao);
}


void virarE() {
  imageMode(CENTER);
  x_aviao=x_aviao-3;
  image(aviao_e, x_aviao, 420);
  println("percent:", percent, "; x_aviao:", x_aviao);
}


void virarD() {
  imageMode(CENTER);
  x_aviao=x_aviao+3;
  image(aviao_r, x_aviao, 420);
  println("percent:", percent, "; x_aviao:", x_aviao);
}


void padrao() {
  imageMode(CENTER);
  image(aviao, x_aviao, 420);
  println("percent:", percent, "; x_aviao:", x_aviao);
}


////////////// TIRO //////////////////

//////////////TIRO/////////////////

void tiro_t() {
  //padrao();
  //background(255);
  noStroke();
  fill(255, 100, 0);
  rectMode(CENTER);
  rect(x_tiro, y_tiro, 3, 20);
  y_tiro=y_tiro-15;
  if (y_tiro<(-10)) {
    tiro=false;
  }
}



void funcao_tiro() {
  if (tiro==true) {
    tiro_t();
  } else {
    y_tiro=420;
    x_tiro=x_aviao;
  }
}



//////////////CONTROLES/////////////


void controles() {

  if (keyPressed) {
    switch (keyCode) {
    case UP:
      acelerar();
      break;

    case DOWN:
      freiar();
      break;

    case LEFT:
      virarE();
      break;

    case RIGHT:
      virarD();
      break;

    default:
      padrao();
      break;
    }
    
    
  }
  
  else{
    padrao();
  }
  
}



//////////////////////////////////////////


/////////////////////Cenario //////////


void cenario() {
  imageMode(CORNER);
  image(c1, 0, y);

  image(c1, 0, y-c1.height);

  y=y+2*percent;

  if (y>480) {
    y=-0;
  }
}

////////////////////// GASOLINA//////////////////
void gasolina() {
  gasolina=gasolina-0.1;

  imageMode(CENTER);
  image(imgGas, xGasolina, yGasolina);
  yGasolina=yGasolina+2*percent;
  if (yGasolina>545) {
    xGasolina=random(147, 576);
    yGasolina=random(-100, -42.5);
  }
}
/////////////////////////////////////////////

///////////////////////HUD //////////////////
void hud() {
  fill(255);
  textSize(24);
  text(int(pontuacao) +"pts", 620, 50);

  pontuacao=pontuacao+0.1*percent;

  rectMode(CORNER);

  fill(255, 100, 0);
  rect(550, 429.5, gasolina, 25);
  imageMode(CORNER);
  image(hudgas, 547, 427);
  if (gasolina<=0) {
    tela=0;
  }
  
  ////////////////////////////////////////
}
