Fruit[] fruits;
void setup()
{
  size(400,300);
  fruits = new Fruit[3];
  for(int  i=0;i<3;i++)
  {
    fruits[i] = new Fruit(this);
  }
}
void draw()
{
  background(125);
  for(int i=0;i<3;i++)
  {
    fill(255);
    ellipse(fruits[i].x,fruits[i].y,50,50);
    textSize(30);
    textAlign(CENTER,CENTER);
    fill(0);
    text(fruits[i].c,fruits[i].x,fruits[i].y);
    fruits[i].update();
  }
}
void keyPressed()
{
  for(int i=0;i<3;i++)
  {
    if(keyCode == fruits[i].c)
    {
      fruits[i].reset();
    }
  }
}
