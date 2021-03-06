
 
void setup() 
{
  size(500, 500);
  noStroke();
  smooth();
  drawCircle(300, 300, 250, 8);
}

void drawCircle(float x, float y, int radius, int level) 
{                    
  float tt = 100 * level;
  fill(tt, 126);
  ellipse(x, y, radius*2, radius*2);      
  if(level > 1) {
    level = level - 1;
    int num = int(random(2, 6));
    for(int i=0; i<num; i++) {
      float a = random(0, TWO_PI);
      float nx = x + cos(a) * level;
      float ny = y + sin(a) * level;
      drawCircle(nx, ny, radius*2, level);
    }
  }
}
