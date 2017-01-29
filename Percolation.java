import edu.princeton.cs.algs4.StdRandom;
import edu.princeton.cs.algs4.StdStats;
import edu.princeton.cs.algs4.WeightedQuickUnionUF;

public class Percolation {
   private int[][] id;
   public Percolation(int n)                // create n-by-n grid, with all sites blocked
   {
       for(int i = 0; i < n; i++){
           for(int j = 0; j < n; j++){
               id[i][j] = (i * n) + j;
           }
       }
       return id;
   }
//   public    void open(int row, int col)    // open site (row, col) if it is not open already
//   public boolean isOpen(int row, int col)  // is site (row, col) open?
//   public boolean isFull(int row, int col)  // is site (row, col) full?
//   public     int numberOfOpenSites()       // number of open sites
//   public boolean percolates()              // does the system percolate?

   public static void main(String[] args)   // test client (optional)
   {
       int[][] Precolation.Percolation(2);
   }
}