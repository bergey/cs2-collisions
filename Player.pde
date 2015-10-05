class Player {
  int x;
  int y;
  int xSpeed;
  int ySpeed;
  Player(){
    x=width/2;
    y=height/2;
    xSpeed=0;
    ySpeed=0;
  }
  void setSpeeds(int newXSpeed,int newYSpeed){
    xSpeed=newXSpeed;
    ySpeed=newYSpeed;
  }
  void update(){
    x=x+xSpeed;
    y=y+ySpeed;
  }
  //render broken
  void render(){
    fill(255,0,0);
    triangle(x-10,y,x+10,y,x,y-25);
  }
}