public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, double x, double y)
    {
        // your code here
        for(int i = 0; i < NUM_STEMS; i++){
          Tendril a = new Tendril(len, 2*Math.PI*i/7, x, y);
          a.show();
        }
    }
}
