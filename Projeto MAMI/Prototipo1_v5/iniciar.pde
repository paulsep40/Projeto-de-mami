void iniciaTudo() {
  y=0;
  percent=1;
  x_aviao=width/2;
  y_tiro=420;
  tiro=false;
  pontuacao=0;
  xGasolina=random(144.5,578.5);
  yGasolina=random(-100,-42.5);

  ///////////////////// INIMIGOS /////////////////////
  y_Inimigo1=random(-20, -10);
  y_Inimigo2=y_Inimigo1-(int(random(180, 200)));
  y_Inimigo3=y_Inimigo2-(int(random(180, 200)));
  rectMode(CENTER);


  velAngulo1=random(0.01, 0.05);
  velAngulo2=random(0.01, 0.05);
  velAngulo3=random(0.01, 0.05);
  personagem1 = int (random(0,3));
  personagem2 = int (random(0,3));
  personagem3 = int (random(0,3));
 

  vivo1=true;
  vivo2=true;
  vivo3=true;
  
  gasolina=150;
}
