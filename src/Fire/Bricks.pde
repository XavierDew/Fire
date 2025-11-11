class Brick {
// member variables
int x,y,w,h;

// Constructor
Brick() {}

// Member methods
void display() {
image(l1,x,y);
}


void break() {}
class Brick {

  float x, y;      
  float w, h;       
  color c;           
  int health;        
  boolean destroyed;  
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
 
  void draw() {
      stroke(255);
      fill(c);
      rect(x, y, w, h);
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
