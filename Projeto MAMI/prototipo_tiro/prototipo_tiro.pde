float y_tiro;
boolean tiro;

void setup() {
  size(720, 480);
  y_tiro=420;
  tiro=false;
}



void draw() {
  if(tiro==true){
    tiro_t();
  
  }
  else{
    y_tiro=420;
  }
  
}

void keyPressed(){
  if(key=='x'){
    tiro=true;
  
  }
  


}

void tiro_t() {
  background(255);
  noStroke();
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(width/2, y_tiro, 5, 20);
  y_tiro=y_tiro-10;
  if (y_tiro<(-10)) {
    tiro=false;
  }
}