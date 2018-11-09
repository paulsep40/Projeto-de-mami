void inimigo1() {
  fill(255, 0, 0);
  rect(width/2+x_Inimigo1, y_Inimigo1, 40, 20);
  x_Inimigo1=sin(angle1)*200;
  y_Inimigo1=y_Inimigo1+2*percent;
  angle1=angle1+velAngulo1;

  if (y_Inimigo1>480) {
    y_Inimigo1=random(-20, -10);

    velAngulo1=random(0.02, 0.07);
  }
}


void inimigo2() {
  fill(255, 0, 0);
  rect(width/2+x_Inimigo2, y_Inimigo2, 40, 20);
  x_Inimigo2=sin(angle2)*200;
  y_Inimigo2=y_Inimigo2+2*percent;
  angle2=angle2+velAngulo2;

  if (y_Inimigo2>480) {
    randomico=(int(random(100, 200)));
    
    if(y_Inimigo2 -randomico<0){
      y_Inimigo2= y_Inimigo1 -randomico;
    }
    
    else{
      randomico=(int(random(180, 200)));
      y_Inimigo2= y_Inimigo1 -randomico;
    }
    velAngulo2=random(0.02, 0.07);
  }
}



void inimigo3() {
  fill(255, 0, 0);
  rect(width/2+x_Inimigo3, y_Inimigo3, 40, 20);
  x_Inimigo3=sin(angle3)*200;
  y_Inimigo3=y_Inimigo3+2*percent;
  angle3=angle3+velAngulo3;

  if (y_Inimigo3>480) {
    
    
    randomico=(int(random(100, 200)));
    
    if(y_Inimigo2 -randomico<0){
      y_Inimigo3= y_Inimigo2 -randomico;
    }
    
    else{
      randomico=(int(random(180, 200)));
      y_Inimigo3= y_Inimigo2 -randomico;
    }
    
    
    
    velAngulo3=random(0.02, 0.07);
  }
}
