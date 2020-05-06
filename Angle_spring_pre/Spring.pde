class Spring{
  Node start, end;
  float defAngle, angle, defLen;
  float mof, vel;//moment of force
  
  Spring(Node start, Node end){
    this.start = start;
    this.end = end;
    PVector diff = PVector.sub(end.pos, start.pos);
    defAngle = atan2(diff.y, diff.x);
    defLen = PVector.dist(start.pos, end.pos);
  }
  
  void setAngle(float angle){
    float len = PVector.dist(start.pos, end.pos);
    end.pos = PVector.add(start.pos, PVector.fromAngle(-angle).setMag(len));
  }
  
  void update(){
    //angle spring
    PVector diff = PVector.sub(end.pos, start.pos);
    float nowAngle = atan2(diff.y, diff.x);
    float sign = 1;
    if(nowAngle > defAngle){
      if(nowAngle - defAngle < PI){
        sign = -1;
      }
    }else{
      if(defAngle - nowAngle > PI){
        sign = -1;
      }
    }
    float dAngle = PI - abs(abs(nowAngle - defAngle) - PI); 
    dAngle = sign * dAngle;
    println(dAngle);
    mof += dAngle*aPow;
    float newAngle = nowAngle + mof;
    //length spring
    float nowLen = diff.mag();
    float dLen = defLen - nowLen;
    vel += dLen*lPow;
    float newLen = nowLen + vel;
    end.pos = PVector.add(start.pos, PVector.fromAngle(newAngle).setMag(newLen));
    mof *= aDump;
    vel *= lDump;
  }
  
  void show(){
    line(start.pos.x, start.pos.y, end.pos.x, end.pos.y);
  }
}
