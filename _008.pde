int i = 0;
int x = 1;
int xmax = 10;
int y = 1;
int ymax = 10;
int point1 = 0;
int point2 = 0;
String lines[] = loadStrings("points.txt");
int points = lines.length;
import processing.pdf.*;
size(4400, 4400, PDF, "exportPDF.pdf");
background(0);
for (x = 1; x < xmax; x++) {
    for (y = 1; y < ymax; y++) {
        int mutateX = int(random(-200, 200));
        int mutateY = int(random(-200, 200));
        println("there are " + points + " points");
        for (i = 0; i < points; i++) {
            String thisline[] = split(lines[i]);
            int next = 0;
            if (i != (points - 1)) { next = i + 1; }
            String nextline[] = split(lines[next]);
            //println(i + ") X: " + thisline[0] + " Y: " + thisline[1] + " X: " + nextline[0] + " Y: " + nextline[1]);
            stroke(255, 0, 0);
            line(int(thisline[0])+mutateX+x*400, int(thisline[1])+mutateY+y*400, int(nextline[0])+mutateX+x*400, int(nextline[1])+mutateY+y*400); 
            point1 = int(random(points));
            point2 = point1;
            while (point1 == point2 || point1 + 1 == point2 || point1 - 1 == point2 || point1 - 2 == point2 || point1 + 2 == point2) { 
                point2 = int(random(points)); 
            }
            String drawpoint1[] = split(lines[point1]);
            String drawpoint2[] = split(lines[point2]);
            stroke(255);
            line(int(drawpoint1[0])+mutateX+x*400, int(drawpoint1[1])+mutateY+y*400, int(drawpoint2[0])+mutateX+x*400, int(drawpoint2[1])+mutateY+y*400);
        }
    }
}
println("finished.");
exit();
