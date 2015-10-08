class Player {
  float rotDegree;
  PVector center;
  PVector v;
  Player(){
    center = new PVector(width/2,height/2);
    v = new PVector(0,0);
  }
  void setRotate(float rot){
   rotDegree=rot+rotDegree;
  }
  void move(){
      v.x = v.x + cos(rotDegree)/5;
      v.y = v.y + sin(rotDegree)/5;
  }
  float angle(){
    return rotDegree;
  }
  //render broken
  void render(){
    fill(255,0,0);
    center.add(v);
    pushMatrix();
    translate(center.x,center.y);
    rotate(rotDegree);
    triangle(-10,0,25,-10,-10,-20);
    popMatrix();
  }
  PVector loc(){
    return center.copy();
  }
}