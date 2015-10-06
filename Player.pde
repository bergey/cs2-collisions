class Player {
  float rotDegree;
  PVector center;
  Player(){
    center = new PVector(width/2,height/2);
  }
 void setRotate(float rot){
   rotDegree=rot+rotDegree;
  }
  void move(boolean g){
    if (g == true){
      center = center.x + cos(rotDegree);
    }else{
      center = new PVector(0,0);
    }
  }
  //render broken
  void render(){
    fill(255,0,0);
    pushMatrix();
   // v.rotate(rotDegree);
    rotate(rotDegree);
    translate(width/2 + v.x,height/2 + v.y);
    triangle(-10,0,10,0,0,-25);
    popMatrix();
  }
}