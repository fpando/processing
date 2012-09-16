$loop = 6;
$count = 0;

//read each line of file int $array[][]
//arraycount
for ($i; $i < $arraycount; $i++) { 
  drawline ($array[$i][0], $array[$i][1], $array[$i+1][0], $array[$i+1][1]); 
  $i++; 
}

while ($count < $loop) {
  $point1 = rand($arraycount);
  $point2 = point1;
  while ($point1 == $point2) { $point2 = rand($arraycount); }
  drawline ($array[$point1][0], $array[$point1][1], $array[$point2][0], $array[$point2][1]);
  $count++;
}

//export to autocad
  
