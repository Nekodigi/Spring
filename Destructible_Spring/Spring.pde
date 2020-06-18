class Spring{
  Node A, B;
  float baseLen, len;
  float sPow = 0.01;//spring power
  boolean broken = false;
  
  Spring(Node A, Node B){
    this.A = A;
    this.B = B;
    this.baseLen = PVector.dist(A.pos, B.pos);
  }
  
  void update(){
    if(!broken){
      PVector diff = PVector.sub(B.pos, A.pos);
      len = diff.mag();
      if(len > baseLen*2) broken = true;
      float lenDiff = min(baseLen, len - baseLen);//limit max force
      A.f.add(PVector.mult(diff, lenDiff*sPow));
      B.f.add(PVector.mult(diff, -lenDiff*sPow));
    }
  }
  
  void show(){
    if(!broken){
      strokeWeight(10);
      line(A.pos.x, A.pos.y, B.pos.x, B.pos.y);
    }
  }
}
