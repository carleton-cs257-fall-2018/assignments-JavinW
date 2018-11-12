package maze;

import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.Group;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.File;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Arrays;

public class MazeView extends Group {
    public final static double CELL_WIDTH = 27.0;

    @FXML private int rowCount;
    @FXML private int columnCount;
    private Rectangle[][] cellViews;
   // private String[][] validMove = new String[31][33];

    public MazeView() {
    }

    public int getRowCount() {
        return this.rowCount;
    }

    public void setRowCount(int rowCount) {
        this.rowCount = rowCount;
        try {
            this.initializeGrid();
        } catch (FileNotFoundException e) {
            System.out.println("file not found");
        }
    }

    public int getColumnCount() {
        return this.columnCount;
    }

    public void setColumnCount(int columnCount) {
        this.columnCount = columnCount;
        try {
            this.initializeGrid();
        } catch (FileNotFoundException e) {
            System.out.println("file not found");
        }
    }

    private void initializeGrid() throws FileNotFoundException {
        Image maze = new Image(new FileInputStream("/Users/javin/Desktop/assignments-JavinW/final/src/maze/MazePicture.png"));
        //Setting the image view
        ImageView mazeImage = new ImageView(maze);

        //Setting the position of the image
        mazeImage.setX(20);
        mazeImage.setY(25);

        //setting the fit height and width of the image view
        mazeImage.setFitHeight(355);
        mazeImage.setFitWidth(395);

        //Setting the preserve ratio of the image view
        // mazeImage.setPreserveRatio(true);
        if (this.rowCount > 0 && this.columnCount > 0) {
            this.cellViews = new Rectangle[this.rowCount][this.columnCount];
            for (int row = 0; row < this.rowCount; row++) {
                for (int column = 0; column < this.columnCount; column++) {
                    Rectangle rectangle = new Rectangle();
                    rectangle.setX((double) column * CELL_WIDTH);
                    rectangle.setY((double) row * CELL_WIDTH);
                    rectangle.setWidth(CELL_WIDTH);
                    rectangle.setHeight(CELL_WIDTH);
             //       rectangle.setStroke(Color.RED);
                    this.cellViews[row][column] = rectangle;
                    this.getChildren().add(rectangle);
                }
            }
        }
        this.getChildren().add(mazeImage);
//        Rectangle mazePlayer = new Rectangle();
//        mazePlayer.setX(5.0);
//        mazePlayer.setY(60.0);
//        mazePlayer.setWidth(20.0);
//        mazePlayer.setHeight(20.0);
//        mazePlayer.setFill(Color.PURPLE);
        //this.getChildren().add(mazePlayer);
        //ArrayList<String> validMoves = new ArrayList<>();
//        String[] tempArray = new String[31];
//        Scanner readFile = new Scanner(new File("/Users/javin/Desktop/cs257_2018_fall/daleksmvc/src/edu/carleton/jondich/maze/mazeLayout.txt"));
//        int row = 0;
//        //String[][] validMove = new String[31][33];
//        while (readFile.hasNextLine()) {
//            //System.out.println(readFile.nextLine());
//            readFile.useDelimiter(",|\\n");
//            for (int column = 0; column < 33; column++) {
//                String move = readFile.next();
//                validMove[row][column] = move;
//                //System.out.println(move);
//                // tempArray[i] = line;
//               // System.out.println(move);
//                //System.out.println(row + " " +  column);
//            }
//            row++;
//        }

    }

    public void update(MazeModel model) {
        assert model.getRowCount() == this.rowCount && model.getColumnCount() == this.columnCount;
        //System.out.println("updating");
        for (int row = 0; row < this.rowCount; row++) {
            for (int column = 0; column < this.columnCount; column++) {
                MazeModel.CellValue cellValue = model.getCellValue(row, column);
                //System.out.println(cellValue);
//                if (cellValue == MazeModel.CellValue.DALEK) {
//                    this.cellViews[row][column].setFill(Color.RED);
//                } else if (cellValue == MazeModel.CellValue.SCRAPHEAP) {
//                    this.cellViews[row][column].setFill(Color.BLACK);
               // }
                if (cellValue == MazeModel.CellValue.RUNNER) {
                    this.cellViews[row][column].setFill(Color.PURPLE);
                } else {
                    this.cellViews[row][column].setFill(Color.WHITE);
                }
            }
        }
    }
}
