README.txt for Word Cloud Program

This is one of the last assignments for my Data Structures class. This was a solo project, 
and everything is my work except for WordCloudMaker.java that uses my data structure to convert the 
list into an HTML file containing a word cloud. Carleton professors created that file 
for our use in the assignment. The assignment was to scan in a book, splitting the book by 
spaces so each word was separate. We had to make a tree containing the words in the book 
(not including words in the StopWords.txt file) that was sorting the words by the number of 
times they appeared in the book and another tree that was sorting the words alphabetically.
Based on command line arguments, the program knows whether to sort the words by frequency or 
alphabetically. To create the cloud, the user would give the program the command "cloud" and 
the number of words to include in the cloud.

Running this program:

javac WordCounter.java
java WordCounter sortType (e.g. frequency) fileName (e.g. Robbers.txt)  

To create a cloud:

javac WordCounter.java
java WordCounter sortType (e.g. cloud) fileName (e.g. Robbers.txt) number (e.g. 40) < fileName.html

An example of the program's output given the cloud commands is included in this folder.