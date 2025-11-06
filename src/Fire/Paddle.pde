class Paddle {
  // Member Variables
  float x, y;
  float w, h;
  float speed;
  PImage l1;

  // Constructor
  Paddle(float x, float y, float w, float h, float speed) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
  }

  // Draw the paddle
  void draw() {
    fill(255,255,0); // White color
    rect(x, y, w, h, 15);
  }

  // Move paddle left
  void moveLeft() {
    x -= speed;
    if (x < 0) {
      x = 0;
    }
  }

  // Move paddle right
  void moveRight() {
    x += speed;
    if (x + w > width) {
      x = width - w;
    }
  }
}




// Code to load it in

Paddle paddle;

void setup() {
  size(800, 600);
  paddle = new Paddle(width/2 - 50, height - 30, 100, 20, 6);
}

void draw() {
  background(0);
  paddle.draw();

  // Move with keys
  if (keyPressed) {
    if (keyCode == LEFT) paddle.moveLeft();
    if (keyCode == RIGHT) paddle.moveRight();
  }
}
