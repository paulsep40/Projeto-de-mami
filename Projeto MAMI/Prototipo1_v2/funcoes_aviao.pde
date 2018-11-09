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
  x_aviao=x_aviao-2;
  image(aviao_e, x_aviao, 420);
  println("percent:", percent, "; x_aviao:", x_aviao);
}


void virarD(){
      imageMode(CENTER);
      x_aviao=x_aviao+2;
      image(aviao_r, x_aviao, 420);
      println("percent:", percent, "; x_aviao:", x_aviao);

}


void padrao(){
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
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(x_aviao, y_tiro, 3, 20);
  y_tiro=y_tiro-10;
  if (y_tiro<(-10)) {
    tiro=false;
  }
}



void funcao_tiro(){
    if(tiro==true){
    tiro_t();
  
  }
  else{
    y_tiro=420;
  }

}



//////////////CONTROLES/////////////


void controles(){

 if (keyPressed) {
    /*if ((keyCode!=RIGHT)||(keyCode!=LEFT)||(keyCode!=UP)||(keyCode!=DOWN)) {
      padrao();
    }*/
    if (keyCode==UP) {
      acelerar();
    }
    
    if (keyCode==DOWN) {
      freiar();
    }
    

    if (keyCode==LEFT) {
      virarE();
    }
    
    if (keyCode==RIGHT) {
      virarD();

    }
    
    if (key==' ') {
      padrao();
    }
       
  } 
  
  
  else {
    padrao();

    
  }

}



//////////////////////////////////////////


/////////////////////Cenario //////////


void cenario(){
  imageMode(CORNER);
  image(c1, 0, y);

  image(c1, 0, y-c1.height);

  y=y+2*percent;

  if (y>480) {
    y=-0;
  }

}
