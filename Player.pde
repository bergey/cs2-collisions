class Player {
  float rotDegree;
  PVector center;
  PVector v;
  int r;
  int g;
  int b;
  Player(){
    center = new PVector(width/2,height/2);
    v = new PVector(0,0);
  }
  void col(int red,int green,int blue){
    r=red;
    g=green;
    b=blue;
  }
  void setRotate(float rot){
   rotDegree=rot+rotDegree;
  }
  void move(){
      v.x = v.x + cos(rotDegree)/5;
      v.y = v.y + sin(rotDegree)/5;
  }
  float radius(){
    return 15;
  }
  float angle(){
    return rotDegree;
  }
  //render broken
  void render(){
    fill(r,g,b);
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