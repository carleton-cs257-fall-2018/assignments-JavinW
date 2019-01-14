import java.util.ArrayList;
import java.util.List;
import java.util.Collections;
import java.util.Comparator;

/**@Author Javin White
* Code to build a tree alphabetically, create a list
* sorted alphabetically or by word frequency
* November 10, 2017
*/

public class WordCountMap {
	 
	 /* Internal Node class for constructing node objects.
    */
	private class Node {
		public String word;
		public int count;
		public Node left;
		public Node right;
		
		private Node(String word, Node right, Node left) {
		this.word = word;
		this.right = right;
		this.left = left;
		count = 1;
		}	
	}
	//instance variables
	private Node root;
	private ArrayList<WordCount> CountList;

	 /**
     * If the specified word is already in this WordCountMap, then its
     * count is increased by one. Otherwise, the word is added to this map
     * with a count of 1.
     * @param word - the word to increment the count of or add to the tree
     */
	public void incrementCount(String word) {
		if (root == null) {
			root = new Node(word, null, null);
		} else {
			treeAdd(word, root);
		}
	}
	
	 /**
     * Helper method to recursively search the tree
     * for a word. If the word is not there it is added
     * @param word - the word to be searched for and/or added
     * @param side - the node to be recursed on
     */
	private void treeAdd(String word, Node side) {
		if (word.compareTo(side.word) < 0) {
			if (side.left == null) {
				side.left = new Node(word, null, null);
			} else {
				treeAdd(word, side.left);
			}
		} else if (word.compareTo(side.word) > 0) {
			if (side.right == null) {
				side.right = new Node(word, null, null);
			} else {
				treeAdd(word, side.right);
			}
		} else if (word.equals(side.word)) {
			side.count++;
		}
	}
	
	 /**
     * toString() method to print the list of words and their frequencies
     * @return result - a string result of the list of WordCount objects
     */
	public String toString() {
		String result = "";
		for (int i = 0; i < CountList.size(); i++) {
			WordCount wordCount = (WordCount) CountList.get(i);
			result = result + wordCount.word + " : " + String.valueOf(wordCount.count) + "\n";
		}
		return result;
	}
	
	 /**
     * Returns an array list of WordCount objects, one per word stored
     * in this WordCountMap, sorted in decreasing order by count
     * @return CountList - the list of WordCount objects sorted by word frequency
     */
	public ArrayList<WordCount> getWordCountsByCount() {
		CountList = new ArrayList<WordCount>();
		inorderTraversal(root);
		Collections.sort(CountList, WordCount.countComparator);
		return CountList;
	}
	
	 /**
     * Returns a list of WordCount objects, one per word stored in this
     * WordCountMap, sorted alphabetically by word.
     * @return CountList - a list of WordCount objects sorted alphabetically
     */
	public ArrayList<WordCount> getWordCountsByWord() {
		CountList = new ArrayList<WordCount>();
		inorderTraversal(root);
		return CountList;
	}
	
	/** 
	* Helper method to recursively traverse the tree using in order traversal
	* @param currNode - the node being recursed on
	*/
	private void inorderTraversal(Node currNode) {
		if (currNode == null) {
			return;
		} else {
			inorderTraversal(currNode.left);
			WordCount wordObject = new WordCount(currNode.word, currNode.count);
			CountList.add(wordObject);
			inorderTraversal(currNode.right);
		}
	}
}