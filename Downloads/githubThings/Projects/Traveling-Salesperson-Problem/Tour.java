/**
 * This class creates a Tour of Points using a 
 * Linked List implementation.  The points can
 * be inserted into the list using two heuristics.
 * @author Javin White 
 * @author Delroy Mangal
 * @author Layla Oesper, modified code 09-22-2017
 */

public class Tour {

    /** A helper class that defines a single node for use in a tour.
     * A node consists of a Point, representing the location of that
     * city in the tour, and a pointer to the next Node in the tour.
     */
    private class Node {
        private Point p;
        private Node next;
	
        /** Constructor creates a new Node at the given Point newP
         * with an intital next value of null.
         * @param newP - the point to associate with the Node.
         */
        public Node(Point newP) {
            p = newP;
            next = null;
        }

        /** Constructor creates a new Node at the given Point newP
         * with the specified next node.
         * @param newP - the point to associate with the Node.
         * @param nextNode - the nextNode this node should point to.
         */
        public Node(Point newP, Node nextNode) {
            p = newP;
            next = nextNode;
        }
	
        /**
         * Return the Point associated with this Node. 
         * (Same value can also be accessed from a Node object node
         * using node.p)
         * @return The Point object associated with this node.
         */
        public Point getPoint() {
            return p;
        }
        
        /**
         * Return the next Node associated with this Node. 
         * (Same value can also be accessed from a Node object node
         * using node.next)
         * @return The next Node object linked from this node..
         */
	   public Node getNext() {
	       return next;
	   }
          
    } // End Node class
    

    // Tour class Instance variables
    private Node head;
    private int size; //number of nodes

    //Add other instance variables you think might be useful.
    //Our instance variables
    private Node cur;
    private double totalDistance;
    private Node tail;   
    private Tour tour;
    private Node ref;
    private Node temp;
    /**
     * Constructor for the Tour class.  By default sets head to null.
     */
    public Tour() {
        head = null;
        cur = head;
        size = 0;
    }
   
   //Method that writes the points to a string and returns the string
   public String toString() {
        cur = head;
        String sList = " ";
        while(cur.next != null) {
            sList += cur.getPoint().toString() + "\n";
            cur = cur.next;
        }
        return sList;
   }
   
   //method that draws the lines between the points
   public void draw() {
        cur = head;
        while (cur.next!= null) {
            Point curPoint = cur.getPoint();
            curPoint.draw();
            Point nextPoint = cur.next.getPoint();
            nextPoint.draw();
            curPoint.drawTo(nextPoint);
            cur = cur.next;
            tail = cur;
        }
        Point tailPoint = tail.getPoint();
        Point headPoint = head.getPoint();
        tailPoint.drawTo(headPoint);
  }
   //method that returns the number of points
    public int size() {
        return size;
   }
   
   //method that calculates the distance between all the points and returns the distance
   public double distance() {
        double distance = 0;
        cur = head;
        while (cur.next != null) {
            temp = cur.next;
            distance += cur.getPoint().distanceTo(temp.getPoint());
            cur = cur.next;
            tail = cur;
        }
        distance += tail.getPoint().distanceTo(head.getPoint());
        System.out.println(distance);
        return distance;   
   }
    //method that gets points from the text file and finds the minimum distance 
    //between 2 points
   public void insertNearest(Point p) {
        double dist = 0;
        double minDist = Double.MAX_VALUE;
        cur = head;
        if (size == 0) {
            head = new Node(p, null);
            temp = head;
            cur = head;
            size++;
            return;
        } 
        while (cur != null) {
            dist = cur.getPoint().distanceTo(p);
            if (dist < minDist) {
                minDist = dist;
                ref = cur;
            }
            cur = cur.next;
            }
        Node newNode = new Node(p, ref.next);
        size++;
        ref.next = newNode;
    }
        
   
    public static void main(String[] args) {
        /* Use your main() function to test your code as you write it. 
         * This main() will not actually be run once you have the entire
         * Tour class complete, instead you will run the NearestInsertion
         * and SmallestInsertion programs which call the functions in this 
         * class. 
         */
        
        
       // One example test could be the follow (uncomment to run):
        
      //   Tour tour = new Tour();
// //         System.out.println(tour);
//         Point p = new Point(0,0);
//         tour.insertNearest(p);
//         p = new Point(0,100);
//         tour.insertNearest(p);
//         p = new Point(100, 100);
//        tour.insertNearest(p);
//         System.out.println("Tour distance =  "+tour.distance());
//          System.out.println("Number of points = "+tour.size());
// //         System.out.println(tour);
        
         

        // the tour size should be 3 and the distance 341.42 (don't forget to include the trip back
        // to the original point)
    
        // uncomment the following section to draw the tour, setting w and h to the max x and y 
        // values that occur in your tour points
	
        /*
        int w = 100 ; //Set this value to the max that x can take on
        int h = 100 ; //Set this value to the max that y can take on
        StdDraw.setCanvasSize(w, h);
        StdDraw.setXscale(0, w);
        StdDraw.setYscale(0, h);
        StdDraw.setPenRadius(.005);
        tour.draw(); 
        */
    }
   
}