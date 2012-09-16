int beams = 6;
int i = 0;
int point1 = 0;
int point2 = 0;
String lines[] = loadStrings("list.txt");
int points = lines.length;

println("there are " + points + " points");
for (int i=0; i < lines.length; i++) {
  println(lines[i]);
}
/*
for (i = 0; i < arraycount; $i++) { 
  drawline ($array[$i][0], $array[$i][1], $array[$i+1][0], $array[$i+1][1]); 
  $i++; 
}
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
