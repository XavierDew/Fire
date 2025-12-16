// Author: Jacob Ruesch


class Ball {
  float x, y;        
  float dx, dy;      
  float r;           
  float speed;       
  Ball(float startX, float startY) {
    x = startX;
    y = startY;
    r = 8;
    speed = 3;

 
    dx = speed;
    dy = -speed;
  }


  void update() {
    x += dx;
    y += dy;

    
    if (x - r < 0 || x + r > width) {
      dx *= -1;
    }

    
    if (y - r < 0) {
      dy *= -1;
    }
  }

 
  void display() {
    fill(255);
    ellipse(x, y, r * 2, r * 2);
  }

  
  void checkPaddleCollision(Paddle p) {
    boolean hitX = x > p.x && x < p.x + p.w;
    boolean hitY = y + r > p.y && y - r < p.y + p.h;

    if (hitX && hitY && dy > 0) {
      dy *= -1;

      
      float hitPoint = (x - p.x) / p.w;
      dx = map(hitPoint, 0, 1, -speed, speed);
    }
  }

  void reset(float startX, float startY) {
    x = startX;
    y = startY;
    dx = speed;
    dy = -speed;
  }

  
  void increaseSpeed(float amount) {
    speed += amount;
    dx = (dx > 0) ? speed : -speed;
    dy = (dy > 0) ? speed : -speed;
  }
}

