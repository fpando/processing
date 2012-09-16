int beams = 6;
int i = 0;
int point1 = 0;
int point2 = 0;
String lines[] = loadStrings("points.txt");
int points = lines.length;

//void setup() {
  size(600,400);
  background(0);
  stroke(255);
//}

println("there are " + points + " points");
for (i = 0; i < points; i++) {
  String thisline[] = split(lines[i]);
  int next = 0;
  if (i != (points - 1)) { next = i + 1; }
  String nextline[] = split(lines[next]);
  println(i + ") X: " + thisline[0] + " Y: " + thisline[1] + " X: " + nextline[0] + " Y: " + nextline[1]);
  line(int(thisline[0]), int(thisline[1]), int(nextline[0]), int(nextline[1])); 
}
/*
i = 0;
while (i < beams) {
  point1 = random($arraycount);
  point2 = point1;
  while ($point1 == $point2) { $point2 = random($arraycount); }
  drawline ($array[$point1][0], $array[$point1][1], $array[$point2][0], $array[$point2][1]);
  i++;
}

//export to autocad
  
*/
