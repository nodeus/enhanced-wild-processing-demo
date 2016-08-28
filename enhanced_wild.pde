PImage img, img3;

void setup() {
  frameRate(50);
  size (320,240);
  colorMode(RGB);
  background(255);
  img = loadImage("grey.png");
  img3 = loadImage("gerb2.png");

}
float y,y2 = PI;
float x,x2 = PI;
int i, r, f, z = 0;
int n = 500;
int c;
int x3 = 320;
int rand = 126;
  
void draw() {
  if (z==100){
   rand=36+9*int (random(900));
   z=0;}
    background(0);
    tunnel(rand);
    sinlogo();
    z++;
  }

  void sinlogo(){
  
  image(img3, -70+x2, -119+y2,280/2,120/2);
  
  y2=14*sin (y);
  y=y-0.21;
  if (y < -PI) {
  y=PI;
  }
  x2=30*sin (x);
  x=x-0.11;
  if (x < -PI) {
  x=PI;
  }
   
  image(img, -128+x2, -88+y2,257+x2/2,200+y2/2);
    
  y2=19*sin (y);
  y=y-0.02;
  if (y < -PI) {
  y=PI;
  }
  x2=9*sin (x);
  x=x-0.02;
  if (x < -PI) {
  x=PI;
  }
  tint(255,255,255,255-x*50-y*20);

}

void tunnel(int rand){
  colorMode(HSB);
    
   translate(160,120);

  for (int t=0, C=0; t<x3; t++, C++){

    if (2*c + C > 256){
    C-=256;
    }
    else if (2*c + C < 0){
      C+=256;
    }
    fill(C + 2*c,255,255);

    rotate(radians(rand));

      ellipse(t-x3,0,4*sqrt(abs(t-x3)),4*sqrt(abs(t-x3)));
  }
  
  c+=1;
  colorMode(RGB);
}  