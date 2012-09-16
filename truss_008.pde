int rectSize = 10;
boolean overPoint01 = false;
boolean lockedPoint01 = false;
boolean overPoint02 = false;
boolean lockedPoint02 = false;
boolean overPoint03 = false;
boolean lockedPoint03 = false;
boolean strokePoint01 = false;
boolean strokePoint02 = false;
boolean strokePoint03 = false;
float[] point01diff = new float[3]; 
float[] point02diff = new float[3];
float[] point03diff = new float[3];
float[] point01 = new float[3];
float[] point02 = new float[3];
float[] point03 = new float[3];
boolean overPoint04 = false;
boolean lockedPoint04 = false;
boolean overPoint05 = false;
boolean lockedPoint05 = false;
boolean overPoint06 = false;
boolean lockedPoint06 = false;
boolean strokePoint04 = false;
boolean strokePoint05 = false;
boolean strokePoint06 = false;
float[] point04diff = new float[3]; 
float[] point05diff = new float[3];
float[] point06diff = new float[3];
float[] point04 = new float[3];
float[] point05 = new float[3];
float[] point06 = new float[3];

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
