float r, g, b;
int x,y;
void setup() {
  size(800, 600);
  surface.setResizable(true);
  background(0);
}

void draw() {
  r = random(255);
  g = random(255);
  b = random(255);
  x = (int)random(width);
  y = (int)random(height);
  fill(r, g, b, (int)random(100));
  noStroke();
  circle(x, y, 10);
}
