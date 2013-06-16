void setup() {
  drawLine(width/2, height, 10);
  background(255);
  stroke(0);
}

void drawLine(startPosX, startPosY, trunkWidth) {
  strokeWeight(trunkWidth);
  line(startPosX, startPosY, endPosX, endPosY);
  
  if(trunkWidth > 1) {
    drawLine(endPosX, endPosY, trunkWidth-2);
  } else {
    strokeWeight(20);
    point(endPosX, endPosY);
  }
}

