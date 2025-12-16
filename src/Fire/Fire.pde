// Jacob Ruesch

Paddle p1;
Ball b1;

void setup() {
  size(600, 400);   
  p1 = new Paddle(width/2 - 40, height - 40, 80, 12, 6);
  b1 = new Ball(width/2, height/2);
}

void draw() {
  background(127);

if (keyPressed) {
  if (key == 'a' || keyCode == LEFT) {
    p1.moveLeft();
  }
  if (key == 'd' || keyCode == RIGHT) {
    p1.moveRight();
  }
}
 
  p1.update();     
  p1.display();


  b1.update();
  b1.checkPaddleCollision(p1);
  b1.display();
}




