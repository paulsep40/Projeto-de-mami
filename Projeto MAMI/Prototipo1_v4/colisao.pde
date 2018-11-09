void colisaoTiro() {
  if (tiro==true) {
    if ((x_tiro>=x_Inimigo1-26.5)&&(x_tiro<=x_Inimigo1+26.5)&&(y_tiro<=y_Inimigo1+17.5)&&(y_tiro>=y_Inimigo1-17.5)) {
      vivo1=false;
      tiro=false;
      pontuacao=pontuacao+10;
    }



    if ((x_tiro>=x_Inimigo2-26.5)&&(x_tiro<=x_Inimigo2+26.5)&&(y_tiro<=y_Inimigo2+17.5)&&(y_tiro>=y_Inimigo2-17.5)) {
      vivo2=false;
      tiro=false;
      pontuacao=pontuacao+10;
    }

    if ((x_tiro>=x_Inimigo3-26.5)&&(x_tiro<=x_Inimigo3+26.5)&&(y_tiro<=y_Inimigo3+17.5)&&(y_tiro>=y_Inimigo3-17.5)) {
      vivo3=false;
      tiro=false;
      pontuacao=pontuacao+10;
    }
  }
}




void colisaoAviao() {

  /////////////////INIMIGO1////////////////////////
  if (vivo1==true) {

    if (((x_aviao+25>=x_Inimigo1-26.5)&&(x_aviao+25<=x_Inimigo1+26.5))&&((420<=y_Inimigo1+21.5)&&(420>=y_Inimigo1-21.5))) {
      tela=0;
    }

    if (((x_aviao-25>=x_Inimigo1-26.5)&&(x_aviao-25<=x_Inimigo1+26.5))&&((420<=y_Inimigo1+21.5)&&(420>=y_Inimigo1-21.5))) {
      tela=0;
    }
  }
  ///////////////////////////

  /////////////////INIMIGO2////////////////////////

  if (vivo2==true) {
    if (((x_aviao+25>=x_Inimigo2-26.5)&&(x_aviao+25<=x_Inimigo2+26.5))&&((420<=y_Inimigo2+21.5)&&(420>=y_Inimigo2-21.5))) {
      tela=0;
    }

    if (((x_aviao-25>=x_Inimigo2-26.5)&&(x_aviao-25<=x_Inimigo2+26.5))&&((420<=y_Inimigo2+21.5)&&(420>=y_Inimigo2-21.5))) {
      tela=0;
    }
  }
  ///////////////////////////

  /////////////////INIMIGO3////////////////////////
  if (vivo3==true) {

    if (((x_aviao+25>=x_Inimigo3-26.5)&&(x_aviao+25<=x_Inimigo3+26.5))&&((420<=y_Inimigo3+21.5)&&(420>=y_Inimigo3-21.5))) {
      tela=0;
    }

    if (((x_aviao-25>=x_Inimigo3-26.5)&&(x_aviao-25<=x_Inimigo3+26.5))&&((420<=y_Inimigo3+21.5)&&(420>=y_Inimigo3-21.5))) {
      tela=0;
    }
  }
  ///////////////////////////
  
  //////////////////// COLISAO CENARIO////////////
  if((x_aviao-25<=120)||(x_aviao+25>=600)){
    tela=0;
  }
  /////////////////////////////////
  
}


void colisaoGasolina() {
  if (((x_aviao>=xGasolina-22.5)&&(x_aviao<=xGasolina+22.5))&&((460<=yGasolina+42.5)&&(460>=yGasolina-42.5))) {
    gasolina=gasolina+1;
    if (gasolina>=150) {
      gasolina=150;
    }
  }

  if (tiro==true) {
    if (((x_tiro>=xGasolina-22.5)&&(x_tiro<=xGasolina+22.5))&&((y_tiro<=yGasolina+42.5)&&(y_tiro>=yGasolina-42.5))) {
      xGasolina=random(144.5, 578.5);
      yGasolina=random(-100, -42.5);
    }
  }
}
