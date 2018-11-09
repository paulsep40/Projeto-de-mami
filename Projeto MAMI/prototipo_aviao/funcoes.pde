
void virarE() {
  imageMode(CENTER);
  x_aviao=x_aviao-2;
  image(aviao_e, x_aviao, 420);
  println("x_aviao:", x_aviao);
}


void virarD(){
      imageMode(CENTER);
      x_aviao=x_aviao+2;
      image(aviao_r, x_aviao, 420);
      println( "x_aviao:", x_aviao);

}


void padrao(){
    imageMode(CENTER);
    image(aviao, x_aviao, 420);
    println("x_aviao:", x_aviao);


}


//////////////TIRO/////////////////

void tiro_t() {
  //padrao();
  background(255);
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