float start = 0.0;
float increment = .02;
void setup() {
	size(400, 400);
}

void draw() {
	background(0);
	stroke(255);
	noFill();
	beginShape();
	float xOffset = start;
	for(int i = 0; i < width; i++) {
		vertex(i, noise(xOffset) * height);
		xOffset += increment;
	}
	endShape();
	start += increment;
}
