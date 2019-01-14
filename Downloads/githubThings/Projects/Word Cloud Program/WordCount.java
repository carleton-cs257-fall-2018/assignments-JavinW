import java.util.ArrayList;
import java.util.List;
import java.util.Comparator;

/**@Author Javin White
* Code to create a WordCount object
* November 10, 2017
*/

public class WordCount implements Comparable<WordCount> {
	//instance variables
	public String word;
	public int count;

 	/**
     * WordCount constructor method
     * constructs a WordCount object containing a word and its associated count
     */		
	public WordCount(String word, int count) {
		this.word = word;
		this.count = count;
	}
	
	 /**
     * Sorting method that uses the built in java comparator
     * @param count1 - the first count to be compared
     * @param count2 - the second count to be compared
     * @return second-first - the difference between the count of the 
     * second param and the first param
     */
	public static Comparator<WordCount> countComparator = new Comparator<WordCount>() {
		public int compare(WordCount count1, WordCount count2) {
			int first = count1.count;
			int second = count2.count;
			return second-first;
		}
	};
	
	 /**
     * Returns a list of WordCount objects, one per word stored in this
     * @param wordObject - the WordCount object to be compared
     * @return comparedCount - the count associated with the wordObject
     */
	@Override
	public int compareTo(WordCount wordObject) {
		int comparedCount = wordObject.count;
		return comparedCount;
		}
}