ArrayList<Node> nodes = new ArrayList<Node>();
ArrayList<Spring> springs = new ArrayList<Spring>();
float iter = 10;
float dt = 0.05/iter;
float drag = 0.01;
Node A, B, C;
Spring s1, s2, s3;

void setup() {
  //fullScreen();
  size(1000, 1000);
  A = new Node(0, 0);
  B = new Node(200, 0);
  C = new Node(0, 200);
  s1 = new Spring(A, B);
  s2 = new Spring(A, C);
  s3 = new Spring(B, C);
}

void draw() {
  background(255);
  strokeWeight(1);
  for (int i = 0; i < iter; i++) {
    A.pos = new PVector(mouseX, mouseY);//loking A position
    A.update();
    B.update();
    C.update();
    s1.update();
    s2.update();
    s3.update();
  }
  A.show();
  B.show();
  C.show();
  s1.show();
  s2.show();
  s3.show();
}
