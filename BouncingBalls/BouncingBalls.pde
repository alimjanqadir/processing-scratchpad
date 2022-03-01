int circleSize = 100;
int circleStrokeWeight = 4;
int velocity = 3;
int originalPosition = circleSize / 2 + circleStrokeWeight / 2;
int x = originalPosition;

void setup() {
   size(400, 400); 
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(circleStrokeWeight);
  noFill();
	
  var endEdge = width - (circleSize / 2) - (circleStrokeWeight / 2); 		
  var startEdge = 0 + (circleSize / 2) + (circleStrokeWeight / 2); 		
  x += velocity;
  if(x > endEdge) {
	velocity = -velocity;
	x = endEdge;
  } else if(x < startEdge){
    velocity = -velocity;
	x = originalPosition;
  }
  circle(x, height/2, circleSize);
}
