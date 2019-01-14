/**@Author Javin White
* Code to implement a word cloud based on word frequency
* November 10, 2017
*/

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.List;

public class WordCounter {

	/**
	* Method that adds the stop words from the file to the array
	* @ param stopWords - takes in the file of stop words to be added to the array
	* @ return stopWordArray - an array containing the stop words
	*/
	public static String[] stopWord(File stopWords) {
		String[] stopWordArray = new String[80];
		try {
			Scanner stopWordScan = new Scanner(stopWords);
			int index = 0;
			while (stopWordScan.hasNext()) {
				stopWordArray[index] = stopWordScan.next();
				index++;
			}
		} catch (FileNotFoundException ex) {
			System.out.println("File not found!");
		}
		return stopWordArray;
	}

	/**
	* Main method that parses the command line arguments, checks if the word in the 
	* file is not a stop word, and calls the appropriate methods
	*/
	public static void main(String[] args) {
		String sortType = args[0];
		File textFile = new File(args[1]);
		WordCountMap wordCountMap = new WordCountMap();		
			try {
				Scanner filescan = new Scanner(textFile);
				File stopWords = new File("StopWords.txt");
				String[] stopWordArray = stopWord(stopWords);
				while (filescan.hasNext()) {
					String word = filescan.next();	
					word = word.replaceAll("[^a-zA-Z]","");
					word = word.toLowerCase();	
					boolean isStop = false;
					for (int i = 0; i < stopWordArray.length; i++) {
						if (word.equals(stopWordArray[i])) {
							isStop = true;
						} //end if
						if (isStop == false && i == 79) {
						wordCountMap.incrementCount(word);
						} //end if
					} //end for
				} //end while
			} catch (FileNotFoundException ex) {
					System.out.println("File not found!");
			} //end catch
		if (sortType.equals("alphabetical")) {
			ArrayList<WordCount> CountList = wordCountMap.getWordCountsByWord();
			System.out.println(wordCountMap.toString());
		} else if (sortType.equals("frequency")) {
			ArrayList<WordCount> CountList = wordCountMap.getWordCountsByCount();
			System.out.println(wordCountMap.toString());
		} else if (sortType.equals("cloud") && args.length > 2) {
			int wordCountSize = Integer.valueOf(args[2]);
			ArrayList<WordCount> CountList = wordCountMap.getWordCountsByCount();
			ArrayList<WordCount> shortenedList = new ArrayList<WordCount>();
			for (int i = 0; i < wordCountSize; i++) {
				WordCount wordCount = (WordCount) CountList.get(i);
				shortenedList.add(wordCount);
			} //end for
			String title = "Word Cloud!";
			String document = WordCloudMaker.getWordCloudHTML(title, shortenedList);	
			System.out.println(document);
		}
	}	
}