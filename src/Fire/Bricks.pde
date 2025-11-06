class Brick {
// member variables
int x,y,w,h speed;
PImage l1;

// Constructor
Brick() {}

// Member methods
void display() {
image(l1,x,y);
}


void break() {}
class Brick {

  float x, y;       // Position
  float w, h;       // Dimensions
  color c;          // Brick color
  int health;       // How many hits it can take
  boolean destroyed; // True if brick is broken

  // Constructor
  Brick(float x, float y, float w, float h, color c, int health) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.health = health;
    this.destroyed = false;
  }
 
  // Display
 
  void display() {
    if (!destroyed) {
      stroke(255);
      fill(c);
      rect(x, y, w, h);
    }
  }

  // Check collision with ball
 
  boolean checkCollision(Ball ball) {
    if (destroyed) return false;

    // Axis-Aligned Bounding Box (AABB) collision
    boolean hit = ball.x + ball.r > x &&
                  ball.x - ball.r < x + w &&
                  ball.y + ball.r > y &&
                  ball.y - ball.r < y + h;

    if (hit) {
      hit(); // reduce brick health
      ball.dy *= -1; // bounce vertically
      return true;
    }

    return false;
  }
  // Called when the brick is hit
 
  void hit() {
    health--;
    if (health <= 0) {
      destroyed = true;
    }  
    }
  }
}
