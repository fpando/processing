int i = 0;
int point1 = 0;
int point2 = 0;
String lines[] = loadStrings("points.txt");
int points = lines.length;

size(600, 400, PDF, "exportPDF.pdf");
background(0);
stroke(255);

println("there are " + points + " points");
for (i = 0; i < points; i++) {
  String thisline[] = split(lines[i]);
  int next = 0;
  if (i != (points - 1)) { next = i + 1; }
  String nextline[] = split(lines[next]);
  println(i + ") X: " + thisline[0] + " Y: " + thisline[1] + " X: " + nextline[0] + " Y: " + nextline[1]);
  line(int(thisline[0]), int(thisline[1]), int(nextline[0]), int(nextline[1])); 
}

i = 0;
while (i < points) {
  point1 = int(random(points));
  point2 = point1;
  while (point1 == point2) { point2 = int(random(points)); }
  String drawpoint1[] = split(lines[point1]);
  String drawpoint2[] = split(lines[point2]);
  line(int(drawpoint1[0]), int(drawpoint1[1]), int(drawpoint2[0]), int(drawpoint2[1]));
  i++;
}

println("finished.");
exit();
