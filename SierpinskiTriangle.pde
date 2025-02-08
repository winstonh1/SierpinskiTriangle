void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  sierpinski(0, 400, 400);
}

void sierpinski(int x, int y, int len) {
  if(len <= 5) {
    triangle(x, y, x + len, y, x + len / 2, y - len);
  } 
  else{
    triangle(x, y, x + len, y, x + len / 2, y - len);
    sierpinski(x, y, len / 2);
    sierpinski(x + len / 2, y, len / 2);
    sierpinski(x + len / 4, y - len / 2, len / 2);
  }
}
