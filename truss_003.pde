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
  size(600, 400);
  rectMode(CENTER_RADIUS); 
}

void draw() { 
    background(0); 
    if (mouseX > point01[0]-rectSize && mouseX < point01[0]+rectSize && mouseY > point01[1]-rectSize && mouseY < point01[1]+rectSize) {
        overPoint01 = true;  
        if(!lockedPoint01) {
            strokePoint01 = true;
            strokePoint02 = false;
            strokePoint03 = false;  
        } 
    } 
    else {
        stroke(153);
        overPoint01 = false;
        strokePoint01 = false;
    }
    if (mouseX > point02[0]-rectSize && mouseX < point02[0]+rectSize && mouseY > point02[1]-rectSize && mouseY < point02[1]+rectSize) {
        overPoint02 = true;  
        if(!lockedPoint02) { 
            strokePoint01 = false;
            strokePoint02 = true;
            strokePoint03 = false; 
        } 
    } 
    else {
        stroke(153);
        overPoint02 = false;
        strokePoint02 = false;
    }
    if (mouseX > point03[0]-rectSize && mouseX < point03[0]+rectSize && mouseY > point03[1]-rectSize && mouseY < point03[1]+rectSize) {
        overPoint03 = true;  
        if(!lockedPoint03) { 
            strokePoint01 = false;
            strokePoint02 = false;
            strokePoint03 = true; 
        } 
    } 
    else {
        stroke(153);
        overPoint03 = false;
        strokePoint03 = false;
    }
    fill(153);
    if (strokePoint01) {
        stroke(255);
    }
    else {
        stroke(153);
    }
    rect(point01[0],point01[1],rectSize,rectSize);
    if (strokePoint02) {
        stroke(255);
    }
    else {
        stroke(153);
    }
    rect(point02[0],point02[1],rectSize,rectSize);
    if (strokePoint03) {
        stroke(255);
    }
    else {
        stroke(153);
    }
    rect(point03[0],point03[1],rectSize,rectSize);
}

void mousePressed() {
    if(overPoint01) { 
        lockedPoint01 = true; 
        fill(255, 255, 255);
    } 
    else {
        lockedPoint01 = false;
    }
    if(overPoint02) { 
        lockedPoint02 = true; 
        fill(255, 255, 255);
    } 
    else {
        lockedPoint02 = false;
    }
    if(overPoint03) { 
        lockedPoint03 = true; 
        fill(255, 255, 255);
    } 
    else {
        lockedPoint03 = false;
    }
    point01diff[0] = mouseX-point01[0]; 
    point01diff[1] = mouseY-point01[1];
    point02diff[0] = mouseX-point02[0];
    point02diff[1] = mouseY-point02[1];
    point03diff[0] = mouseX-point03[0];
    point03diff[1] = mouseY-point03[1]; 
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
}

void mouseReleased() {
    lockedPoint01 = false;
    lockedPoint02 = false;
    lockedPoint03 = false;
}

