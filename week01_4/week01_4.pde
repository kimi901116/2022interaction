void setup()
{
  size(500,500);
  background(#FFFFFF);
}
void draw()
{
  if(key == '1')
  {
    stroke(#FF0F03);
  }
  if(key == '2')
  {
    stroke(#FF8E03);
  }
  if(key == '3')
  {
    stroke(#F6FF03);
  }
  if(mousePressed)
  {
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
