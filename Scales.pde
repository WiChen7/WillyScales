void setup() {
  size(1000, 1000);  //feel free to change the size
  frameRate(10);
  
}
void draw() {
  background(0,0,0);
  for (int y = 50; y <= 850; y+=100){
    for(int x = 50; x<= 850; x+=100){
     if(Math.random() < 0.5)
     scale(x,y,255,215,0);
    else
     scale(x,y,255,255,200);
    }
  }
  
  for (int y = 100; y <= 950; y+=100){
    for(int x = 100; x<= 950; x+=100){
      
   if(Math.random() < 0.5)
     scale(x,y,255,215,0);
    else
     scale(x,y,255,255,200); 
    
    }
  }
}

void scale(int x, int y, int r, int g, int b)
{
  noStroke(); 
  //star
  if(Math.random() < 0.5){
  fill(r,g,b);
  ellipse(x,y,19,19);
  triangle(x,y-20, x-7,y, x+7,y); // top
  triangle(x,y-7, x-20,y, x,y+7); // left
  triangle(x,y-7, x,y+7, x+20,y); // right
  triangle(x,y+20, x-7,y, x+7,y); // bottom
  }
}
