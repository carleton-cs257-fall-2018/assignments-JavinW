/*
* @author Javin White whitej2@carleton.edu
* date 11/17/18
*
* MazeView.java displays the game board to the user
* and updates itself based on input from the model
 */
package maze;

import javafx.fxml.FXML;
import javafx.scene.Group;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

public class MazeView extends Group {

    public final static double CELL_WIDTH = 27.0;
    @FXML private int rowCount;
    @FXML private int columnCount;
    private Rectangle[][] cellViews;

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

    /*
    * Creates the cell grid and adds the maze image
    * to the game window.
    * @throws FileNotFoundException
     */
    private void initializeGrid() throws FileNotFoundException {
        Image maze = new Image(new FileInputStream(System.getProperty("user.dir") + "/src/maze/MazePicture.png"));
        ImageView mazeImage = new ImageView(maze);
        mazeImage.setX(20);
        mazeImage.setY(25);
        mazeImage.setFitHeight(355);
        mazeImage.setFitWidth(395);
        if (this.rowCount > 0 && this.columnCount > 0) {
            this.cellViews = new Rectangle[this.rowCount][this.columnCount];
            for (int row = 0; row < this.rowCount; row++) {
                for (int column = 0; column < this.columnCount; column++) {
                    Rectangle rectangle = new Rectangle();
                    rectangle.setX((double) column * CELL_WIDTH);
                    rectangle.setY((double) row * CELL_WIDTH);
                    rectangle.setWidth(CELL_WIDTH);
                    rectangle.setHeight(CELL_WIDTH);
                    this.cellViews[row][column] = rectangle;
                    this.getChildren().add(rectangle);
                }
            }
        }
        this.getChildren().add(mazeImage);
    }

    /*
    * Uses information from the maze model to update
    * the game board.
    * @param model - MazeModel object
     */
    public void update(MazeModel model) {
        assert model.getRowCount() == this.rowCount && model.getColumnCount() == this.columnCount;
        for (int row = 0; row < this.rowCount; row++) {
            for (int column = 0; column < this.columnCount; column++) {
                MazeModel.CellValue cellValue = model.getCellValue(row, column);
                if (cellValue == MazeModel.CellValue.PLAYER) {
                    this.cellViews[row][column].setFill(Color.PURPLE);
                } else {
                    this.cellViews[row][column].setFill(Color.LIGHTGRAY);
                }
            }
        }
    }
}
