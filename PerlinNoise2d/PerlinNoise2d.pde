float start = 0;
float increment = .01;
void setup() {
	size(400, 400);
}

void draw() {
	loadPixels();
	var xOffset = start;
	var yOffset = start;
	noiseDetail(8, map(mouseX, 0, width, 0.1, 0.6));
	for(int i = 0; i < width*height; i++) {
		var random = noise(xOffset, yOffset, .02) * 255;
		var black = color(random, random, random);
		pixels[i] = black;
		if(i % width == 0) {
			xOffset = 0;
			yOffset += increment;
		}
		xOffset += increment;
	}
	updatePixels();
}
