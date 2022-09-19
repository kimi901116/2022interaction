void setup()
{
  size(500,500);
  PFont font = createFont("標楷體",30);
  textFont(font);
  myShuffle();
}
void myShuffle()
{
  String [] flower = {"黑桃","紅心","方塊","梅花"};
  String [] number = {"A","2","3","4","5","6","7","8","9","10","J","Q","K"};
  face1 = flower[int(random(4))]+number[int(random(13))];
  face2 = flower[int(random(4))]+number[int(random(13))];
  face3 = flower[int(random(4))]+number[int(random(13))];
  face4 = flower[int(random(4))]+number[int(random(13))];
}
void mousePressed()
{
  myShuffle();
}
int w = 20;
String face1,face2,face3,face4;
void draw()
{
  drawPokercard(100,100,face1);
  drawPokercard(130,150,face2);
  drawPokercard(160,200,face3);
  drawPokercard(190,250,face4);
}
void drawPokercard(int x,int y ,String face)
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,230+w,20);
  fill(#E3FCD6);
  rect(x,y,150,230,20);
  if(face.indexOf("黑桃") == -1 && face.indexOf("梅花") == -1)fill(#FF0000);
  else fill(0);
  textSize(30);
  text(face,x,y+30);
}
