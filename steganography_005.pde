
void setup() {
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
  frameRate(.4);
  
}

void draw() {
 
  //pick letter : random 26 : convert to ascii
  String[] alphaArray = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","x","y","z"};
  int colorVal = random(97,122);
  int letta = floor(random(26));
  String alphax = alpha[letta];
  fill(colorVal,colorVal);
  int pixelx = floor(random(1,599);
  int pixely = floor(random(1,399);
  text(alphax,pixelx,pixely,500,500);
  string binaryRep = binary(colorVal);
  text(binaryRep,pixelx,pixely,500,500);
  
  //pick pixel : random 600 * random 400
  //embed pixel with color/ascii code
  //circle pixel in red : print roman letter : print ascii code
      // print to the right of pixel,
     // or left if more than halfway over
}
