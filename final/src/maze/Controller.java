package maze;

import javafx.fxml.FXML;
import javafx.event.EventHandler;
import javafx.scene.control.Label;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;

public class Controller implements EventHandler<KeyEvent> {
    @FXML private Label scoreLabel;
    @FXML private Label messageLabel;
    @FXML private Label movesLabel;
    @FXML private MazeView mazeView;
    private MazeModel mazeModel;

    public Controller() {
    }

    public void initialize() {
        this.mazeModel = new MazeModel(this.mazeView.getRowCount(), this.mazeView.getColumnCount());
        this.update();
    }

    public double getBoardWidth() {
        return MazeView.CELL_WIDTH * this.mazeView.getColumnCount();
    }

    public double getBoardHeight() {
        return MazeView.CELL_WIDTH * this.mazeView.getRowCount();
    }

    private void update() {
        this.mazeView.update(this.mazeModel);
        this.scoreLabel.setText(String.format("Score: %d", this.mazeModel.getScore()));
        this.movesLabel.setText(String.format("# of Moves: %d", this.mazeModel.getNumMoves()));
        if (this.mazeModel.isGameOver()) {
            this.messageLabel.setText("Game Over");
        }
//        } else if (this.mazeModel.isLevelComplete()) {
//            this.messageLabel.setText("Nice job! Hit L to start the next level.");
//        } else {
//            this.messageLabel.setText("Use the keys surrounding the S to run from the maze.");
//        }
    }

    @Override
    public void handle(KeyEvent keyEvent) {
        boolean keyRecognized = true;
        KeyCode code = keyEvent.getCode();
       // System.out.println(code);
        if (code == KeyCode.UP) {
            this.mazeModel.moveRunnerBy(-1, 0);
        } else if (code == KeyCode.DOWN) {
            this.mazeModel.moveRunnerBy(1, 0);

        } else if (code == KeyCode.RIGHT) {
            this.mazeModel.moveRunnerBy(0, 1);

        } else if (code == KeyCode.LEFT) {
            this.mazeModel.moveRunnerBy(0, -1);
        }
//    }
//        System.out.println(code);
//        String s = code.getChar();
//        if (s.length() > 0) {
//            char theCharacterWeWant = s.charAt(0);
//        }
//
//        if (code == KeyCode.LEFT || code == KeyCode.A) {
//            this.mazeModel.moveRunnerBy(0, -1);
//        } else if (code == KeyCode.RIGHT || code == KeyCode.D) {
//            this.mazeModel.moveRunnerBy(0, 1);
//        } else if (code == KeyCode.UP || code == KeyCode.W) {
//            this.mazeModel.moveRunnerBy(-1, 0);
//        } else if (code == KeyCode.DOWN || code == KeyCode.X) {
//            this.mazeModel.moveRunnerBy(1, 0);
//        } else if (code == KeyCode.Q) {
//            this.mazeModel.moveRunnerBy(-1, -1);
//        } else if (code == KeyCode.E) {
//            this.mazeModel.moveRunnerBy(-1, 1);
//        } else if (code == KeyCode.Z) {
//            this.mazeModel.moveRunnerBy(1, -1);
//        } else if (code == KeyCode.C) {
//            this.mazeModel.moveRunnerBy(1, 1);
//        } else if (code == KeyCode.S) {
//            this.mazeModel.moveRunnerBy(0, 0);
//        } else if (code == KeyCode.T) {
//            this.mazeModel.teleportRunner();
//        } else if (code == KeyCode.G) {
//            if (this.mazeModel.isGameOver()) {
//                this.mazeModel.startNewGame();
//            }
//        } else if (code == KeyCode.L) {
//            if (this.mazeModel.isLevelComplete()) {
//                this.mazeModel.startNextLevel();
//            }
//        } else {
//            keyRecognized = false;
//        }
//
        if (keyRecognized) {
            this.update();
            keyEvent.consume();
        }
//    }
    }
}