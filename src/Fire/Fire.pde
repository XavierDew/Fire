Paddle p1;

void setup() {
size(200,200);
p1 = new Paddle(100,100,20,20,4);
b1 = new Ball();
}

void draw() {
background(127);
p1.display();

}
