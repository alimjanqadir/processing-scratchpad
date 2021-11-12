int x = 0;
int speed = 3;
void setup() {
   size(300, 300); 
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(4);
  noFill();
  circle(x, height/2, 100);
  if(x > width) {
    speed = -speed;
  } else if(x < 0){
    speed = -speed;
  }
  x += speed;
}
