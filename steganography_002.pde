
void setup() {
  background(25);
  size(600, 400);
  PImage stega; 
  stega = loadImage("stega.003.jpg"); 
  image(stega, 0, 400-stega.height, stega.width, stega.height); 
}

void draw() {
  line(0,0,400,400);
}
