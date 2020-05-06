class Spring{
  Node start, end;
  PVector defDiff;
  float defLen;
  PVector vel = new PVector();//moment of force
  
  Spring(Node start, Node end){
    this.start = start;
    this.end = end;
    defDiff = PVector.sub(end.pos, start.pos);
    defLen = PVector.dist(start.pos, end.pos);
  }
  
  void update(){
    PVector diff = PVector.sub(end.pos, start.pos);
    PVector dd = PVector.sub(defDiff, diff);
    vel.add(dd.mult(vPow));
    diff.add(vel);
    end.pos = PVector.add(start.pos, diff);
    vel.mult(vDump);
  }
  
  void show(){
    line(start.pos.x, start.pos.y, end.pos.x, end.pos.y);
  }
}
