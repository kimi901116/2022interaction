void setup()
{
  size(400,300);
}
float fruitX=200,fruitY=150,fruitVX=1,fruitVY=-1;
boolean flying = true;
void draw()
{
  background(125);
  ellipse(fruitX,fruitY,50,50);
  if(flying)
  {
    fruitX += fruitVX;
    fruitX += fruitVY;
  }
}
void keyPressed()
{
  flying = false;
}
