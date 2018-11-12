package maze;

import java.io.FileNotFoundException;
import java.io.File;
import java.util.Scanner;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.util.Duration;

public class MazeModel {

    public enum CellValue {
        EMPTY, RUNNER
    };
    private static final Integer STARTTIME = 15;
    private Timeline timeline;
    private Integer timeSeconds = STARTTIME;
    private boolean gameOver;
    private int score;
    private int numMoves;
    private int level;
    private int[][] validMove = new int[31][33];
    private int[][] winningSequence = new int[29][2];

    // Note that runnerRow, runnerColumn, and dalekCount are all redundant with
    // the contents of cells, so we have to be careful throughout to keep them
    // coherent. We maintain this redundancy to avoid lags for large boards.
    private CellValue[][] cells;
    private int runnerRow;
    private int runnerColumn;

    public MazeModel(int rowCount, int columnCount) {
        assert rowCount > 0 && columnCount > 0;
        this.cells = new CellValue[rowCount][columnCount];
        this.startNewGame();
    }

    public void startNewGame() {
        this.gameOver = false;
        this.score = 100;
        //this.level = 1;
        this.numMoves = 0;
        this.initializeLevel();
        //this.initializeTimer();
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

//    private void initializeTimer() {
//
//    }

//    public String getTimeRemaining() {
//        return this.timeSeconds.toString();
//    }

    public int getNumMoves() {
        return this.numMoves;
    }
//    public void startNextLevel() {
//        if (this.isLevelComplete()) {
//            this.level++;
//            this.initializeLevel();
//        }
//    }

    //

    public boolean isGameOver() {
        return this.gameOver;
    }

    private void initializeLevel() {
        int rowCount = this.cells.length;
        int columnCount = this.cells[0].length;

        // Empty all the cells
        for (int row = 0; row < rowCount; row++) {
            for (int column = 0; column < columnCount; column++) {
                this.cells[row][column] = CellValue.EMPTY;
            }
        }

        // Place the runner
//        Random random = new Random();
        this.runnerRow = 2;
        this.runnerColumn = 0;
        this.cells[this.runnerRow][this.runnerColumn] = CellValue.RUNNER;

//        this.dalekCount = this.numberOfDaleksForLevel(this.level);
//        for (int k = 0; k < this.dalekCount; k++) {
//            int row = random.nextInt(rowCount);
//            int column = random.nextInt(columnCount);
//            if (this.cells[row][column] == CellValue.EMPTY) {
//                this.cells[row][column] = CellValue.DALEK;
//            }
//        }
    }

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

    private void initializeAutoSolve() throws FileNotFoundException {
       // Scanner readFile = new Scanner(new File("/Users/javin/Desktop/assignments-JavinW/final/src/maze/winningSequence.txt"));
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

    public void moveRunnerBy(int rowChange, int columnChange) {
//        if (this.gameOver || this.dalekCount == 0) {
//            return;
//        }
        boolean canMove = trackCollision(rowChange, columnChange);
        if (canMove) {
            int newRow = this.runnerRow + rowChange;
            if (newRow < 0) {
                newRow = 0;
            }
            if (newRow >= this.getRowCount()) {
                newRow = this.getRowCount() - 1;
            }

            int newColumn = this.runnerColumn + columnChange;
            if (newColumn < 0) {
                newColumn = 0;
            }
            if (newColumn >= this.getColumnCount()) {
                newColumn = this.getColumnCount() - 1;
            }


            this.cells[this.runnerRow][this.runnerColumn] = CellValue.EMPTY;
            this.runnerRow = newRow;
            this.runnerColumn = newColumn;
            this.cells[this.runnerRow][this.runnerColumn] = CellValue.RUNNER;
            this.numMoves++;
            this.checkGameOver();
        }
    }

    public void autoSolve(){
        this.cells[this.runnerRow][this.runnerColumn] = CellValue.EMPTY;
        //this.cells[winningSequence[0]][winningSequence[0]] = CellValue.RUNNER;
        //System.out.println(winningSequence[0][0]);
        for (int row = 0; row < 29; row++) {
            for (int column = 0; column < 1; column++) {
                this.cells[winningSequence[row][column]][winningSequence[row][column+1]] = CellValue.RUNNER;
            }
        }
        this.runnerRow = 13;
        this.runnerColumn = 15;
        checkGameOver();
    }

    public boolean checkGameOver() {
        if (this.runnerRow == 13 && this.runnerColumn == 15) {
            this.gameOver = true;
            calculateFinalScore();
        }
        return this.gameOver;
    }

    public void calculateFinalScore() {
        //will be changed when the timer works
        this.score = this.score + 10;
    }

    public boolean trackCollision(int rowChange, int columnChange) {
        boolean valid;
        int currRow = this.runnerRow;
        int currColumn = this.runnerColumn;
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

    // Assumes that the runner has been removed from this.cells.
//    private void moveDaleksToFollowRunner() {
//        // Initialize a new game board
//        int rowCount = this.cells.length;
//        int columnCount = this.cells[0].length;
//        CellValue[][] newCells = new CellValue[rowCount][columnCount];
//        for (int row = 0; row < rowCount; row++) {
//            for (int column = 0; column < columnCount; column++) {
//                newCells[row][column] = CellValue.EMPTY;
//            }
//        }
//
//        // Move the maze on the old game board to their new positions on
//        // the new game board. If a collision occurs, adjust score, check for
//        // game-over, check for level-complete, etc.
//        for (int row = 0; row < rowCount; row++) {
//            for (int column = 0; column < columnCount; column++) {
//                CellValue cellValue = this.cells[row][column];
//                if (cellValue != CellValue.EMPTY) {
//                    int newRow = row;
//                    int newColumn = column;
//                    if (cellValue == CellValue.DALEK){
//                        if (newRow < this.runnerRow) {
//                            newRow++;
//                        } else if (newRow > this.runnerRow) {
//                            newRow--;
//                        }
//
//                        if (newColumn < this.runnerColumn) {
//                            newColumn++;
//                        } else if (newColumn > this.runnerColumn) {
//                            newColumn--;
//                        }
//                    }
//
//                    if (newCells[newRow][newColumn] == CellValue.EMPTY) {
//                        newCells[newRow][newColumn] = cellValue;
//                    } else {
//                        // Collision! Update score and reduce the number of living maze.
//                        if (newCells[newRow][newColumn] == CellValue.DALEK) {
//                            this.score++;
//                            this.dalekCount--;
//                        }
//                        if (cellValue == CellValue.DALEK) {
//                            this.score++;
//                            this.dalekCount--;
//                        }
//
//                        newCells[newRow][newColumn] = CellValue.SCRAPHEAP;
//                    }
//                }
//            }
//        }
//
//        if (newCells[this.runnerRow][this.runnerColumn] == CellValue.EMPTY) {
//            newCells[this.runnerRow][this.runnerColumn] = CellValue.RUNNER;
//        } else {
//            if (newCells[this.runnerRow][this.runnerColumn] == CellValue.DALEK) {
//                this.score++;
//                this.dalekCount--;
//            }
//            newCells[this.runnerRow][this.runnerColumn] = CellValue.SCRAPHEAP;
//            this.gameOver = true;
//        }
//
//        this.cells = newCells;
//    }
}
