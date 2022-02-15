int x;
int y;
boolean isMovingDisabled;
void setup() {
  size(600, 600);
  x = width / 2;
  y = height / 2;
  circle(width / 2, height / 2 , 10);
}

void draw() {
  background(0);
  fill(255);
  circle(x, y , 10);
  noFill();
  stroke(255);
  strokeWeight(4);
  for(int i = 50; i < 500; i+=50)
    circle(x, y , i);
}

void mouseMoved() {
  if(!isMovingDisabled) {
    x = mouseX;
    y = mouseY;
  }
}

void mousePressed() {
  isMovingDisabled = !isMovingDisabled;
}
