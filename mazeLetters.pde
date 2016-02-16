PImage img;
char keytext;
int x = 20;
int y = 40;

void setup() {
  // Images must be in the "data" directory to load correctly
  size(1200, 300);
  background(255);
  //img = loadImage("A.png");
}

void draw() {
  if (keyPressed) {
    keytext = key;
    img = loadImage(keytext+".png");
    image(img, x, y, img.width/8, img.height/8);
    x = x+(img.width/8) + 10;
    strokeWeight(4);
    strokeCap(SQUARE);
    line (x+2, 176, x-12, 176);
    line (x+2, 164, x-12, 164);
    delay(100);
    } 
}