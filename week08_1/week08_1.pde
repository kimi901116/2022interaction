import processing.sound.*;
SoundFile  file1,file2;
void setup()
{
  size(300,300);
  textSize(50);
  fill(255,0,0);
  file1 =new SoundFile(this,"In Game Music.mp3");
  file2 =new SoundFile(this,"In Game Music.mp3");
  file1.play();
}
int stage=1;
void draw()
{
  background(125);
  if(stage == 1)
  {
    text("stage1",100,100);
  }
  else if(stage == 2)
  {
    text("stage2",100,100);
  }
}

void mousePressed()
{
  if(stage == 1)
  {
    stage = 2;
    file1.stop();
    file2.play();
  }
  else if(stage == 2)
  {
    stage = 1;
    file2.stop();
    file1.play();
  }
}
