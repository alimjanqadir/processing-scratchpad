void setup() {
  size(800, 600);

}

void draw() {
  background(0);
  if(mouseX >= width/2) {
    fill(255);
  }else {
    noFill();
  }
  stroke(255);
  circle(width/2, height/2, 100);
}
