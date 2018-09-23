// raindrops_100 by Rupert Russell
// September 23 2018
// Code on Github at: https://github.com/rupertrussell/raindrops-100
// Artwork on Redbubble at: https://www.redbubble.com/people/rupertrussell/works/34099127-raindrops-100?asc=u
// Inspired by http://geometrydaily.tumblr.com/post/56876400759/495-garden-a-new-minimal-geometric-composition
// #495 Garden – A new minimal geometric composition each day

float x;
float y;
int max = 200;
int space = 10;
int saveEvery = 5;
int numberToSave = 30;
int numberSaved = 0;
int oldSaveCount = 0;
int gap = 1000;
int offset = 1500;

void setup() {
  size(8800, 8800); 
  background(#f3f5f4);
  fill(#f3f5f4);
  stroke(#729287);
  strokeWeight(20);
  // noFill();
}

void draw() {

  y = random(height);
  for (int x = 0; x < width - offset * 1.5; x = x + gap) {
    for (int y = 0; y < height - offset * 1.5; y = y + gap) {
      for (int i = (int) random(150, 2000); i > 10; i = i - 150) {
        ellipse(x + offset , y + offset, i, i);
      }
    }
  }

  if (frameCount == oldSaveCount + saveEvery) {
    oldSaveCount = frameCount;
    save(frameCount + ".png");
    println("frameCount = " + frameCount);
    numberSaved ++;
    println("numberSaved = " + numberSaved);
  }
  if (numberSaved == numberToSave) {
    exit();
  }
}

void mouseClicked() {
  // noLoop();
  save("test_" + frameCount + ".png");
  exit();
}
