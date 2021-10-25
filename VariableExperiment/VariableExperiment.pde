int circleX = 0;
int circleSize = 0;
void setup() {
  size(400,300);
}

void draw() {
  background(0);
  noStroke();
  fill(255);
  rectMode(CENTER);
  circle(circleX, 150, circleSize);
  circleX += 5;
  circleX %= 400;
  circleSize += 2;
  circleSize %= 300;
}

void mousePressed(){
  circleSize = 0;
}
