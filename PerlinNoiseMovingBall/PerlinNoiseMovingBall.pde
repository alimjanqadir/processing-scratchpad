float xOffset = 0;
float yOffset = 1000;
void setup() {
	size(400, 400);
}

void draw() {
	background(0);
	var x = map(noise(xOffset), 0, 1, 0, width);
	var y = map(noise(yOffset), 0, 1, 0, height);

	circle(x,y,10);
	xOffset += 0.01;
	yOffset += 0.01;
}
