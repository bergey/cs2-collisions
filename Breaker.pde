class Breaker {
  PVector center;
  PVector v;
  float rotDegree;
  
  Breaker(PVector c) {
    center = c;
    v = new PVector(0,0);
  }
  Breaker(){
    center = new PVector(0,0);
    v = new PVector(0,0);
  }
  void setCent(PVector j){
    center = j;
  }
  void setRotate(float rot){
    rotDegree=rot+rotDegree;
  }
  void fly(){
      v.x = v.x + cos(rotDegree)/5;
      v.y = v.y + sin(rotDegree)/5;
  }
  float radius(){
    return 5;
  }
 
 void render(){
    stroke(0);
    center.add(v.copy());
    pushMatrix();
    translate(center.x,center.y);
    ellipse(0,0, 5, 5);
    popMatrix();
 }
}
 