float sam = 0;
int center = 934;
void setup() { // called once
 size(1000, 1000);
}

void draw() { //repeats
 background(230, 100, 252);
 square(sam, 0, 200);
 sam = sam + 1;
 fill(200, 50, 180);
 circle (90, center, 300);
 center = center - 1;
 
 
}
