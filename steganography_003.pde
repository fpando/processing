
void setup() {
  PImage stega; 
  stega = loadImage("stega.004.jpg"); 
  size(stega.width, stega.height);
  image(stega, 0, 0, stega.width, stega.height);
  PFont font;
  font = loadFont("Eureka90.vlw"); 
  String s = "The quick brown fox jumped over the lazy dog.";
  fill(0, 102, 153);
  textFont(font, 35);
  text(s, 77, 30, 500, 400); 
}

void draw() {
  //pick letter : random 26 : convert to ascii
  //pick pixel : random 600 * random 400
  //embed pixel with color/ascii code
  //circle pixel in red : print roman letter : print ascii code
      // print to the right of pixel,
     // or left if more than halfway over
}
