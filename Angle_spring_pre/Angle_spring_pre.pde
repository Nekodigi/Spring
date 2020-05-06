float aPow = 0.02;
float lPow = 0.02;
float aDump = 0.8;
float lDump = 0.8;
Node a, b, c, d;
Spring s1, s2, s3;

void setup(){
  size(500, 500);
  strokeWeight(5);
  a = new Node(width/2, 500);
  b = new Node(width/2, 300);
  c = new Node(width/2-100, 100);
  d = new Node(width/2+100, 100);
  s1 = new Spring(a, b);
  s2 = new Spring(b, c);
  s3 = new Spring(b, d);
  s1.setAngle(QUARTER_PI);
}

void draw(){
  background(255);
  s1.update();
  s2.update();
  s3.update();
  a.pos = new PVector(mouseX, mouseY);
  a.show();
  b.show();
  c.show();
  d.show();
  s1.show();
  s2.show();
  s3.show();
}
