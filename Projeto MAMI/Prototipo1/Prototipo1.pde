PImage c1, c2, c3, aviao, aviao_e, aviao_r; //<>//
float y, percent, x_aviao, y_tiro;
int r_image, i, j;

void setup() {

  size(720, 480);
  c1 = loadImage("c1.jpg");
  c2 = loadImage("c2.jpg");
  c3 = loadImage("c3.jpg");
  aviao= loadImage("aviao.png");
  aviao_e= loadImage("aviao_e.png");
  aviao_r= loadImage("aviao_r.png");
  y=0;
  percent=1;
  x_aviao=width/2;
  y_tiro=420;
}



void draw() {
  //background(255);
  //r_image=int(random(0, 3));
  imageMode(CORNER);
  image(c1, 0, y);

  image(c1, 0, y-c1.height);

  y=y+4*percent;





  //println(y);
  if (y>480) {
    y=-0;
  }

  if (keyPressed) {
    
    if (keyCode==UP) {
      percent=percent*1.01;
      if (percent>3) {
        percent=3;
      }
      imageMode(CENTER);
      image(aviao, x_aviao, 420);
      println("percent:", percent, "; x_aviao:", x_aviao);
    }

    if (keyCode==DOWN) {
      percent=percent*0.99;
      if (percent<1) {
        percent=1;
      }
      imageMode(CENTER);
      image(aviao, x_aviao, 420);
      println("percent:", percent, "; x_aviao:", x_aviao);
    }


    if (keyCode==LEFT) {
      imageMode(CENTER);
      x_aviao=x_aviao-2;
      image(aviao_e, x_aviao, 420);
      println("percent:", percent, "; x_aviao:", x_aviao);
    }

    if (keyCode==RIGHT) {
      imageMode(CENTER);
      x_aviao=x_aviao+2;
      image(aviao_r, x_aviao, 420);
      println("percent:", percent, "; x_aviao:", x_aviao);
    } 
       
    
  } 
  
  else {
    imageMode(CENTER);
    image(aviao, x_aviao, 420);
    println("percent:", percent, "; x_aviao:", x_aviao);
  }
}