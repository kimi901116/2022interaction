void setup()
{
  size(500,500);
}
int w = 20;
void draw()
{
  drawcard(100,100);
  drawcard(200,200);
}
void drawcard(int x,int y )
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,20);
  fill(#00FF0A);
  rect(x,y,150,250,20);
}
