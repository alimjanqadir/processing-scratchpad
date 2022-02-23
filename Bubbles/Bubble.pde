class Bubble {
  int x = (int) random(width);
  int y = (int) random(height);
  int radius = 10;
  int strokeWidth = 3;
  boolean isFill = false;
  public Bubble(){}
  
  public Bubble(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void move() {
    x += (int)random(-5, 5);
    y += (int)random(-5, 5);
  }
  
  void show() {
    if(isFill) fill(255);
    else noFill();
    strokeWeight(strokeWidth);
    stroke(255);
    circle(x, y, radius);
  }
  
  void isFill(boolean isFill) {
    this.isFill = isFill;
  }
  
  boolean intersects(Bubble that) {
    if(this == that) return false;
   
    var distance = dist(this.x, this.y, that.x, that.y);
    return distance - (this.strokeWidth + that.strokeWidth) - (this.radius + that.radius) / 2 <= 0;
  }
}
