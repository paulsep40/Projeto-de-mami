void inimigo1() {
  if (vivo1==true) {
    trocaI1();
  }

  x_Inimigo1=width/2+(sin(angle1)*200);
  y_Inimigo1=y_Inimigo1+2*percent;

  angle1=angle1+velAngulo1;


  if (y_Inimigo1>480) {
    y_Inimigo1=random(-20, -10);

    velAngulo1=random(0.01, 0.05);
    
    vivo1=true;
  }
}


void inimigo2() {
  
  if (vivo2==true) {
    trocaI2();
  }



  x_Inimigo2=width/2+(sin(angle2)*200);
  y_Inimigo2=y_Inimigo2+2*percent;
  angle2=angle2+velAngulo2;

  if (y_Inimigo2>480) {
    randomico=(int(random(100, 200)));

    if (y_Inimigo2 -randomico<0) {
      y_Inimigo2= y_Inimigo1 -randomico;
    } else {
      randomico=(int(random(180, 200)));
      y_Inimigo2= y_Inimigo1 -randomico;
    }
    
    velAngulo2=random(0.01, 0.05);
    
    vivo2=true;
    
  }


}



void inimigo3() {

  if (vivo3==true) {
    trocaI3();
  }

  x_Inimigo3=width/2+(sin(angle3)*200);
  y_Inimigo3=y_Inimigo3+2*percent;
  angle3=angle3+velAngulo3;

  if (y_Inimigo3>480) {


    randomico=(int(random(100, 200)));

    if (y_Inimigo2 -randomico<0) {
      y_Inimigo3= y_Inimigo2 -randomico;
    } else {
      randomico=(int(random(180, 200)));
      y_Inimigo3= y_Inimigo2 -randomico;
    }

    velAngulo3=random(0.01, 0.05);
    
    vivo3=true;
  }
}



void trocaI1() {

  
  if (x_Inimigo1<165) {
    troca1=0;
  }
  if (x_Inimigo1>555) {
    troca1=1;
  }

  if (troca1==0) {
    image(heliE, x_Inimigo1, y_Inimigo1);
  }
  if (troca1==1) {
    image(heliD, x_Inimigo1, y_Inimigo1);
  }

  
}


void trocaI2(){
//////////////INIMIGO 2////////////////

  if (x_Inimigo2<165) {
    troca2=0;
  }
  if (x_Inimigo2>555) {
    troca2=1;
  }

  if (troca2==0) {
    image(heliE, x_Inimigo2, y_Inimigo2);
  }
  if (troca2==1) {
    image(heliD, x_Inimigo2, y_Inimigo2);
  }



}


void trocaI3(){
 ////////////////////INIMIGO 3///////////////

  if (x_Inimigo3<165) {
    troca3=0;
  }
  if (x_Inimigo3>555) {
    troca3=1;
  }

  if (troca3==0) {
    image(heliE, x_Inimigo3, y_Inimigo3);
  }
  if (troca3==1) {
    image(heliD, x_Inimigo3, y_Inimigo3);
  }


}
