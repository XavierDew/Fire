// Author: Jacob Ruesch

class Paddle {
  float x, y;        
  float w, h;        
  float speed;      

  Paddle(float x, float y, float w, float h, float speed) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
  }

  
  void display() {
    fill(255, 204, 0);
    rect(x, y, w, h, 4);
  }

 
  void moveLeft() {
    x -= speed;
    if (x < 0) {
      x = 0;
    }
  }

 
  void moveRight() {
    x += speed;
    if (x + w > width) {
      x = width - w;
    }
  }
}
