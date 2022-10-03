int [][]board = 
{
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {-7,0,-7,0,-7,0,-7,0,-7},
  {0,-6,0,0,0,0,0,-6,0},
  {0,0,0,0,0,0,0,0,0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4},
};
String []name1 = {"將","士","象","車","馬","砲","卒"};
String []name2 = {"帥","仕","相","俥","傌","炮","兵"};
void setup()
{
  size(500,550);
  PFont font = createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw()
{
  background(#FF9203);
  for(int i=50;i<=450;i +=50)
  {
    line(i,50,i,250);
    line(i,300,i,500);
  }
  for(int j=50;j<=500;j +=50)
  {
    line(50,j,450,j);
  }
  line(200,50,300,150);
  line(300,50,200,150);
  line(200,400,300,500);
  line(300,400,200,500);
  
  noFill();
  rect(90,140,20,20);
  rect(90,390,20,20);
  rect(390,140,20,20);
  rect(390,390,20,20);
  rect(50,190,10,20);
  rect(50,340,10,20);
  rect(440,190,10,20);
  rect(440,340,10,20);
  rect(140,190,20,20);
  rect(140,340,20,20);
  rect(240,190,20,20);
  rect(240,340,20,20);
  rect(340,190,20,20);
  rect(340,340,20,20);
    
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      int id = board[i][j];
      if(id == 0) continue;
      if(id>0)
      {
        fill(#FFD9A7);
        ellipse(50+j*50,50+i*50,40,40);
        ellipse(50+j*50,50+i*50,35,35);
        fill(000000);
        text(name1[id-1],50+j*50,50+i*50-3);
      }
      else if(id<0)
      {
        fill(#FFD9A7);
        ellipse(50+j*50,50+i*50,40,40);
        ellipse(50+j*50,50+i*50,35,35);
        fill(255,0,0);
        text(name2[-id-1],50+j*50,50+i*50-3);
      }
    }
  }
  if(handChess != 0)
  {
    fill(#FFFFFF);
    ellipse(mouseX,mouseY,30,30);
  }
}
int handChess = 0;
void mousePressed()
{
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      if(dist(mouseX,mouseY,50+j*50,50+i*50)<20)
      {
        handChess = board[i][j];
        board[i][j] = 0;
      }
    }
  }
}
void mouseReleased()
{
  int i = (mouseY+25-50)/50;
  int j = (mouseX+25-50)/50;
  board[i][j] = handChess;
  handChess = 0;
}
