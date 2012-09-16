int rectSize = 10;
boolean overPoint01 = false;
boolean lockedPoint01 = false;
boolean strokePoint01 = false;
float[] point01diff = new float[3];
float[] point01 = new float[3];
boolean strokePoint02 = false;
boolean overPoint02 = false;
boolean lockedPoint02 = false;
float[] point02diff = new float[3];
float[] point02 = new float[3];
boolean overPoint03 = false;
boolean lockedPoint03 = false;
boolean strokePoint03 = false;
float[] point03diff = new float[3];
float[] point03 = new float[3];
boolean overPoint04 = false;
boolean lockedPoint04 = false;
boolean strokePoint04 = false;
float[] point04diff = new float[3];
float[] point04 = new float[3];
float[] point05 = new float[3];
float[] point05diff = new float[3];
boolean strokePoint05 = false;
boolean overPoint05 = false;
boolean lockedPoint05 = false;
boolean overPoint06 = false;
boolean lockedPoint06 = false;
boolean strokePoint06 = false;
float[] point06diff = new float[3];
float[] point06 = new float[3];
boolean overPoint07 = false;
boolean lockedPoint07 = false;
boolean strokePoint07 = false;
float[] point07diff = new float[3];
float[] point07 = new float[3];
boolean strokePoint08 = false;
boolean overPoint08 = false;
boolean lockedPoint08 = false;
float[] point08diff = new float[3];
float[] point08 = new float[3];
boolean overPoint09 = false;
boolean lockedPoint09 = false;
boolean strokePoint09 = false;
float[] point09diff = new float[3];
float[] point09 = new float[3];
boolean overPoint10 = false;
boolean lockedPoint10 = false;
boolean strokePoint10 = false;
float[] point10diff = new float[3];
float[] point10 = new float[3];
float[] point11 = new float[3];
float[] point11diff = new float[3];
boolean strokePoint11 = false;
boolean overPoint11 = false;
boolean lockedPoint11 = false;
boolean overPoint12 = false;
boolean lockedPoint12 = false;
boolean strokePoint12 = false;
float[] point12diff = new float[3];
float[] point12 = new float[3];
boolean overPoint13 = false;
boolean lockedPoint13 = false;
boolean strokePoint13 = false;
float[] point13diff = new float[3];
float[] point13 = new float[3];
boolean strokePoint14 = false;
boolean overPoint14 = false;
boolean lockedPoint14 = false;
float[] point14diff = new float[3];
float[] point14 = new float[3];
boolean overPoint15 = false;
boolean lockedPoint15 = false;
boolean strokePoint15 = false;
float[] point15diff = new float[3];
float[] point15 = new float[3];
boolean overPoint16 = false;
boolean lockedPoint16 = false;
boolean strokePoint16 = false;
float[] point16diff = new float[3];
float[] point16 = new float[3];
float[] point17 = new float[3];
float[] point17diff = new float[3];
boolean strokePoint17 = false;
boolean overPoint17 = false;
boolean lockedPoint17 = false;
boolean overPoint18 = false;
boolean lockedPoint18 = false;
boolean strokePoint18 = false;
float[] point18diff = new float[3];
float[] point18 = new float[3];
boolean overPoint19 = false;
boolean lockedPoint19 = false;
boolean strokePoint19 = false;
float[] point19diff = new float[3];
float[] point19 = new float[3];
boolean strokePoint20 = false;
boolean overPoint20 = false;
boolean lockedPoint20 = false;
float[] point20diff = new float[3];
float[] point20 = new float[3];
boolean overPoint21 = false;
boolean lockedPoint21 = false;
boolean strokePoint21 = false;
float[] point21diff = new float[3];
float[] point21 = new float[3];
boolean overPoint22 = false;
boolean lockedPoint22 = false;
boolean strokePoint22 = false;
float[] point22diff = new float[3];
float[] point22 = new float[3];
float[] point23 = new float[3];
float[] point23diff = new float[3];
boolean strokePoint23 = false;
boolean overPoint23 = false;
boolean lockedPoint23 = false;
boolean overPoint23 = false;
boolean lockedPoint23 = false;
boolean strokePoint23 = false;
float[] point23diff = new float[3];
float[] point23 = new float[3];



void setup() {
  point01[0] = 400;
  point01[1] = 100;
  point01[2] = 0;
  point02[0] = 200;
  point02[1] = 200;
  point02[2] = 0;
  point03[0] = 300;
  point03[1] = 300;
  point03[2] = 0;
  point04[0] = 500;
  point04[1] = 200;
  point04[2] = 0;
  point05[0] = 150;
  point05[1] = 300;
  point05[2] = 0;
  point06[0] = 100;
  point06[1] = 200;
  point06[2] = 0;
  size(600, 400);
  rectMode(CENTER_RADIUS); 
}

void draw() { 
    background(0); 
    if (mouseX > point01[0]-rectSize && mouseX < point01[0]+rectSize && mouseY > point01[1]-rectSize && mouseY < point01[1]+rectSize) { overPoint01 = true; } 
    else { overPoint01 = false; }
    if (mouseX > point02[0]-rectSize && mouseX < point02[0]+rectSize && mouseY > point02[1]-rectSize && mouseY < point02[1]+rectSize) { overPoint02 = true; } 
    else { overPoint02 = false; }
    if (mouseX > point03[0]-rectSize && mouseX < point03[0]+rectSize && mouseY > point03[1]-rectSize && mouseY < point03[1]+rectSize) { overPoint03 = true; } 
    else { overPoint03 = false; }
    if (mouseX > point04[0]-rectSize && mouseX < point04[0]+rectSize && mouseY > point04[1]-rectSize && mouseY < point04[1]+rectSize) { overPoint04 = true; } 
    else { overPoint04 = false; }
    if (mouseX > point05[0]-rectSize && mouseX < point05[0]+rectSize && mouseY > point05[1]-rectSize && mouseY < point05[1]+rectSize) { overPoint05 = true; } 
    else { overPoint05 = false; }
    if (mouseX > point06[0]-rectSize && mouseX < point06[0]+rectSize && mouseY > point06[1]-rectSize && mouseY < point06[1]+rectSize) { overPoint06 = true; } 
    else { overPoint06 = false; }
    fill(100);
    if (overPoint01) { stroke(255); } else { stroke(100); }
    rect(point01[0],point01[1],rectSize,rectSize);
    if (overPoint02) { stroke(255); } else { stroke(100); }
    rect(point02[0],point02[1],rectSize,rectSize);
    if (overPoint03) { stroke(255); } else { stroke(100); }
    rect(point03[0],point03[1],rectSize,rectSize);
    if (overPoint04) { stroke(255); } else { stroke(100); }
    rect(point04[0],point04[1],rectSize,rectSize);
    if (overPoint05) { stroke(255); } else { stroke(100); }
    rect(point05[0],point05[1],rectSize,rectSize);
    if (overPoint06) { stroke(255); } else { stroke(100); }
    rect(point06[0],point06[1],rectSize,rectSize);
    stroke(255);
    line(point01[0],point01[1],point02[0],point02[1]);
    line(point01[0],point01[1],point03[0],point03[1]);
    line(point01[0],point01[1],point04[0],point04[1]);
    line(point01[0],point01[1],point05[0],point05[1]);
    line(point01[0],point01[1],point06[0],point06[1]);
    line(point02[0],point02[1],point03[0],point03[1]);
    line(point02[0],point02[1],point04[0],point04[1]);
    line(point02[0],point02[1],point05[0],point05[1]);
    line(point02[0],point02[1],point06[0],point06[1]);
    line(point03[0],point03[1],point04[0],point04[1]);
    line(point03[0],point03[1],point05[0],point05[1]);
    line(point03[0],point03[1],point06[0],point06[1]);
    line(point04[0],point04[1],point05[0],point05[1]);
    line(point04[0],point04[1],point06[0],point06[1]);
    line(point05[0],point05[1],point06[0],point06[1]);
}

void mousePressed() {
    if(overPoint01) { 
        lockedPoint01 = true; 
        fill(255, 255, 255);
    } 
    else { lockedPoint01 = false; }
    if(overPoint02) { 
        lockedPoint02 = true; 
        fill(255, 255, 255);
    } 
    else { lockedPoint02 = false; }
    if(overPoint03) { 
        lockedPoint03 = true; 
        fill(255, 255, 255);
    } 
    else { lockedPoint03 = false; }
    if(overPoint04) { 
        lockedPoint04 = true; 
        fill(255, 255, 255);
    } 
    else { lockedPoint04 = false; }
    if(overPoint05) { 
        lockedPoint05 = true; 
        fill(255, 255, 255);
    } 
    else { lockedPoint05 = false; }
    if(overPoint06) { 
        lockedPoint06 = true; 
        fill(255, 255, 255);
    } 
    else { lockedPoint06 = false; }
    point01diff[0] = mouseX-point01[0]; 
    point01diff[1] = mouseY-point01[1];
    point02diff[0] = mouseX-point02[0];
    point02diff[1] = mouseY-point02[1];
    point03diff[0] = mouseX-point03[0];
    point03diff[1] = mouseY-point03[1]; 
    point04diff[0] = mouseX-point04[0]; 
    point04diff[1] = mouseY-point04[1];
    point05diff[0] = mouseX-point05[0];
    point05diff[1] = mouseY-point05[1];
    point06diff[0] = mouseX-point06[0];
    point06diff[1] = mouseY-point06[1];
}

void mouseDragged() {
    if(lockedPoint01) {
        point01[0] = mouseX-point01diff[0]; 
        point01[1] = mouseY-point01diff[1]; 
    }
    if(lockedPoint02) {
        point02[0] = mouseX-point02diff[0]; 
        point02[1] = mouseY-point02diff[1]; 
    }
    if(lockedPoint03) {
        point03[0] = mouseX-point03diff[0]; 
        point03[1] = mouseY-point03diff[1]; 
    }
    if(lockedPoint04) {
        point04[0] = mouseX-point04diff[0]; 
        point04[1] = mouseY-point04diff[1]; 
    }
    if(lockedPoint05) {
        point05[0] = mouseX-point05diff[0]; 
        point05[1] = mouseY-point05diff[1]; 
    }
    if(lockedPoint06) {
        point06[0] = mouseX-point06diff[0]; 
        point06[1] = mouseY-point06diff[1]; 
    }
}

void mouseReleased() {
    lockedPoint01 = false;
    lockedPoint02 = false;
    lockedPoint03 = false;
    lockedPoint04 = false;
    lockedPoint05 = false;
    lockedPoint06 = false;
}
