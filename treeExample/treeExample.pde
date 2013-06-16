void setup() {
  size(400, 640);
  background(255);
  drawLine(width/2, height, 10);
}

void drawLine(int startPosX, int startPosY, int trunkWidth) {
  stroke(255, 200, 100);
  strokeWeight(trunkWidth);
  int endPosX = startPosX + int(random(-50, 50));
  int endPosY = startPosY - (60 + 80/trunkWidth);
  line(startPosX, startPosY, endPosX, endPosY);
  
  if(trunkWidth > 1) {
    drawLine(endPosX, endPosY, constrain(trunkWidth-2, 1, 10));
    drawLine(endPosX, endPosY, constrain(trunkWidth-2, 1, 10));
    drawLine(endPosX, endPosY, constrain(trunkWidth-2, 1, 10));
  } else {
    stroke(20, 150, 20);
    strokeWeight(20);
    point(endPosX, endPosY);
  }
}
