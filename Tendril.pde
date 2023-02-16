class Tendril
{
  public final static int SEG_LENGTH = 7; //length of each segment in the tendril
  private int myNumSegments;
  private double myAngle, myX, myY;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, double x, double y)
  {
    //your code here
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    //your code here  
    double startX;
    double startY;
    if(myNumSegments < 1){
      startX = myX;
      startY = myY;
      for(int i = 0; i < myNumSegments; i++){
        myAngle += Math.random()*0.4 - 0.2;
        double endX = startX + Math.cos(myAngle) * SEG_LENGTH;
        double endY = startY + Math.sin(myAngle) * SEG_LENGTH;
        line((float)startX, (float)startY, (float)endX, (float)endY);
        startX = endX;
        startY = endY;
      }
      return;
    }
    
    startX = myX;
    startY = myY;
    for(int i = 0; i < myNumSegments; i++){
      myAngle += Math.random()*0.4 - 0.2;
      double endX = startX + Math.cos(myAngle) * SEG_LENGTH;
      double endY = startY + Math.sin(myAngle) * SEG_LENGTH;
      line((float)startX, (float)startY, (float)endX, (float)endY);
      startX = endX;
      startY = endY;
    }
    new Cluster(myNumSegments/3, startX, startY);
  }
}
