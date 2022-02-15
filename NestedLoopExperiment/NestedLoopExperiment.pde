void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  fill(random(255), random(255), random(255));
  stroke(255);
  strokeWeight(4);
  for(int y = 0; y <= mouseY; y += 50) {
    for(int x = 0; x <= mouseX; x += 50) {
      circle(x, y, 20);
    }
  }
  
}
