
void setup() {
  frameRate(1);
}

void draw() {
  String s = "The quick brown fox jumped over the lazy dog.";
  PFont font;
  font = loadFont("Eureka90.vlw");
  PImage stega; 
  stega = loadImage("stega.004.jpg"); 
  size(stega.width, stega.height);
  image(stega, 0, 0, stega.width, stega.height);
  fill(0, 102, 153);
  textFont(font, 35);
  text(s, 77, 30, 500, 400); 
  //pick letter : random 26 : convert to ascii
  String[] alpha = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","x","y","z"};
  int letta = floor(random(026));
  String alphax = alpha[letta];
  fill(0);
  text(alphax,300,30,500,500);
  
  //pick pixel : random 600 * random 400
  //embed pixel with color/ascii code
  //circle pixel in red : print roman letter : print ascii code
      // print to the right of pixel,
     // or left if more than halfway over
}
