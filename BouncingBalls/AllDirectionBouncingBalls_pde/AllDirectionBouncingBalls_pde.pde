int x = (int) random(10, 100);
int y = (int) random(10, 100);
int xSpeed = 10;
int ySpeed = 10;
int ballSize = 50;

float bounce = random(1);
void setup() {
    size(800, 800);
}


void draw() {
  background(0);
  display();
  move();
  bounce();
  System.out.println(y);
}

void display() {
  //fill(255);
  strokeWeight(3);
  stroke(255);
  circle(x, y, ballSize);
}

void move() {
  x += xSpeed;
  y += ySpeed;
}

void bounce() {
  if(x >= width || x <= 0) {
    xSpeed = -xSpeed;
  }
  
  if(y >= height || y <= 0) {
        ySpeed = -ySpeed;
  }
}
