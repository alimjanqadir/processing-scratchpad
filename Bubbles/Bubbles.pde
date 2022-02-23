import java.util.ArrayList;
import java.util.List;

List<Bubble> bubbles = new ArrayList<>();
void setup() {
    size(400, 400);
    for(int i=0; i < 100; i++)
      bubbles.add(new Bubble());
}

void draw() {
  background(0);
  drawBubbles();
  fillIntersectedBubbles();
}

private void drawBubbles() {
  bubbles.forEach(bubble->{
      bubble.show();
      bubble.move();
  });
}

private void fillIntersectedBubbles() {
  var intersectedBubbles = getIntersectedBubbles();
  intersectedBubbles.forEach(bubble->{
    bubble.isFill(true);
    bubble.show();
  });
  // Reset all bubble state for next frame
  bubbles.forEach(bubble-> bubble.isFill(false));
  intersectedBubbles.clear();
}

private List<Bubble> getIntersectedBubbles() {
   List<Bubble> intersectedBubbles = new ArrayList<>();
   for(int i = 0; i < bubbles.size(); i++) {
     for(int j = 0; j < bubbles.size(); j++) {
       if(bubbles.get(i).intersects(bubbles.get(j))) {
         intersectedBubbles.add(bubbles.get(i));
         intersectedBubbles.add(bubbles.get(j));
       }
     }
  }
  return intersectedBubbles;
}
