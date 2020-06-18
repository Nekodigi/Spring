float vPow = 0.1;
float vDump = 0.5;

Node a, b, c, d;
Spring s1, s2, s3;

void setup(){
  size(500, 500);
  strokeWeight(5);
  a = new Node(width/2, height);
  b = new Node(width/2, height/5*3);
  c = new Node(width/2-width/5, height/5);
  d = new Node(width/2+width/5, height/5);
  s1 = new Spring(a, b);
  s2 = new Spring(b, c);
  s3 = new Spring(b, d);
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
