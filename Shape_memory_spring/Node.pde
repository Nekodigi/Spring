class Node{
  PVector pos;
  
  Node(float x, float y){
    this.pos = new PVector(x, y);
  }
  
  void show(){
    ellipse(pos.x, pos.y, 20, 20);
  }
}
