void setup(){
  surface.setResizable(true);
}

void draw() {
  fill(map(mouseX, 0, width, 255, 0));
  noStroke();
  background(map(mouseX, 0, width, 0, 255));
  circle(mouseX, mouseY, width / 100 * 10);
}
