/*
* @Author: Javin White whitej2@carleton.edu
* MazeModel.java
*
* This file maintains the model of the game and receives updates from the controller.
*
*/
package maze;

import java.io.FileNotFoundException;
import java.io.File;
import java.util.Scanner;

public class MazeModel {

    public enum CellValue {
        EMPTY, PLAYER
    };


    private boolean gameOver;
    private int score;
    private int numMoves;
    private int[][] validMove;
    private int[][] winningSequence;
    private CellValue[][] cells;
    private int playerRow;
    private int playerColumn;
    private boolean move = true;

    /*
    * Initializes the cells 2d array,
    * validMove 2d array, and winningSequence 2d array.
    * @param rowCount
    * @param columnCount
     */
    public MazeModel(int rowCount, int columnCount) {
        assert rowCount > 0 && columnCount > 0;
        this.cells = new CellValue[rowCount][columnCount];
        this.validMove = new int[rowCount*2+1][columnCount*2+1];
        this.winningSequence = new int[rowCount*2-1][2];
    }

    /*
    * starts the game
    * initializes the score, number of moves,
    * and game over.
    * initializes the wall detection and 
    * auto-solve features.
     */
    public void startNewGame() {
        this.gameOver = false;
        this.score = 300;
        this.numMoves = 0;
        this.initializeLevel();
        try {
            this.initializeCollisionTracker();
        } catch (FileNotFoundException e) {
            System.out.println("File not found");
        }
        try {
            this.initializeAutoSolve();
        } catch (FileNotFoundException e) {
            System.out.println("File not found");
        }
    }

    public int getNumMoves() {
        return this.numMoves;
    }
    
    /*
    * Places the runner at the start position
     */
    private void initializeLevel() {
        this.playerRow = 2;
        this.playerColumn = 0;
        this.cells[this.playerRow][this.playerColumn] = CellValue.PLAYER;
    }

    /*
    * Reads in the mazeLayout.txt file which tells
    * the program where the walls are located
    * and prevents the player from crossing the lines
    * @throws FileNotFoundException
     */
    private void initializeCollisionTracker() throws FileNotFoundException {
        Scanner readFile = new Scanner(new File(System.getProperty("user.dir") + "/src/maze/mazeLayout.txt"));
        int row = 0;
        while (readFile.hasNextLine()) {
            readFile.useDelimiter(",|\\n");
            for (int column = 0; column < 33; column++) {
                int move = readFile.nextInt();
                validMove[row][column] = move;
            }
            row++;
        }
    }

    /*
    * Reads in the winningSequence.txt file which tells
    * the program which cells to fill with color to
    * display the solution to the maze.
    * @throws FileNotFoundException
     */
    private void initializeAutoSolve() throws FileNotFoundException {
        Scanner readFile = new Scanner(new File(System.getProperty("user.dir") + "/src/maze/winningSequence.txt"));
        int row = 0;
        while (readFile.hasNextLine()) {
            readFile.useDelimiter(",|\\n");
            for (int column = 0; column < 2; column++) {
                int move = readFile.nextInt();
                winningSequence[row][column] = move;
            }
            row++;
        }
    }

    public int getRowCount() {
        return this.cells.length;
    }

    public int getColumnCount() {
        assert this.cells.length > 0;
        return this.cells[0].length;
    }

    public int getScore() {
        return this.score;
    }

    public CellValue getCellValue(int row, int column) {
        assert row >= 0 && row < this.cells.length && column >= 0 && column < this.cells[0].length;
        return this.cells[row][column];
    }

    /*
    * Moves the player up, down, to the left
    * or to the right one cell depending on
    * the rowChange and columnChange
    * @param rowChange the number of rows to move
    *                   and the direction to move in
    * @param columnChange the number of columns to move
    *                   and the direction to move in
     */
    public void movePlayerBy(int rowChange, int columnChange) {
        boolean canMove = trackCollision(rowChange, columnChange);
        if (canMove) {
            int newRow = this.playerRow + rowChange;
            if (newRow < 0) {
                newRow = 0;
            }
            if (newRow >= this.getRowCount()) {
                newRow = this.getRowCount() - 1;
            }

            int newColumn = this.playerColumn + columnChange;
            if (newColumn < 0) {
                newColumn = 0;
            }
            if (newColumn >= this.getColumnCount()) {
                newColumn = this.getColumnCount() - 1;
            }
            this.cells[this.playerRow][this.playerColumn] = CellValue.EMPTY;
            this.playerRow = newRow;
            this.playerColumn = newColumn;
            this.cells[this.playerRow][this.playerColumn] = CellValue.PLAYER;
            this.numMoves++;
            this.isGameOver();
        }
    }

    /*
    * displays the correct path to get from
    * the start to the finish.
     */
    public void autoSolve(){
        this.cells[this.playerRow][this.playerColumn] = CellValue.EMPTY;
        for (int row = 0; row < 29; row++) {
            for (int column = 0; column < 1; column++) {
                this.cells[winningSequence[row][column]][winningSequence[row][column+1]] = CellValue.PLAYER;
            }
        }
        this.playerRow = 13;
        this.playerColumn = 15;
        this.score = 0;
        this.isGameOver();
    }

    public void outOfTime() {
        this.move = false;
    }

    /*
    * Checks if the player is in the correct end
    * position which would end the game
    * @return is the game over or not
     */
    public boolean isGameOver() {
        if (this.playerRow == 13 && this.playerColumn == 15) {
            this.gameOver = true;
            this.move = false;
        } else {
            this.changeScore();
        }
        return this.gameOver;
    }

    /*
    * Changes the score based on the number of moves made
    * If the number of moves exceeds 28, the perfect number,
    * the score decreases by 10 when every move after that is
    * made.
     */
    private void changeScore() {
        if (this.numMoves > 28) {
            this.score = this.score - 10;
        }
    }

    public boolean canMove() {
        return this.move;
    }

    /*
    * Checks to see if the move the player wants to
    * make is valid.
    * Checks the validMoves array to make sure the player is
    * not attempting to cross a wall.
    * If the value of the space that the player wants to move to is 0,
    * that means that there is no line there, so the move is valid.
    * @param rowChange the number of rows to move
     *                   and the direction to move in
     * @param columnChange the number of columns to move
     *                   and the direction to move in
     */
    private boolean trackCollision(int rowChange, int columnChange) {
        boolean valid;
        int currRow = this.playerRow;
        int currColumn = this.playerColumn;
        int checkRow = currRow + (currRow + 1);
        checkRow = checkRow + rowChange;
        int checkColumn = currColumn + (currColumn + 1);
        checkColumn = checkColumn + columnChange;
        if (validMove[checkRow][checkColumn] == 0) {
            valid = true;
        } else {
            valid = false;
        }
        return valid;
    }
}
