/*
* @Author Javin White whitej2@carleton.edu
* Date 11/17/18
*
* Controller.java receives input from the user as they play the game
*  and sends it to MazeModel.java.
 */
package maze;

import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.event.EventHandler;
import javafx.scene.control.Label;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import java.util.Timer;
import java.util.TimerTask;

public class Controller implements EventHandler<KeyEvent> {

    final private double FRAMES_PER_SECOND = 1.0;
    @FXML private Label scoreLabel;
    @FXML private Label messageLabel;
    @FXML private Label movesLabel;
    @FXML private MazeView mazeView;
    private MazeModel mazeModel;
    private Timer timer;
    private int timeRemaining = 30;


    public Controller() {
    }

    /*
    * Starts the game
     */
    public void initialize() {
        this.mazeModel = new MazeModel(this.mazeView.getRowCount(), this.mazeView.getColumnCount());
        this.mazeModel.startNewGame();
        this.startTimer();
        this.update();
    }

    /*
    * Runs the timer for the game
     */
    private void startTimer() {
        if (this.timeRemaining !=0) {
            this.timer = new java.util.Timer();
            TimerTask timerTask = new TimerTask() {
                public void run() {
                    Platform.runLater(new Runnable() {
                        public void run() {
                            updateAnimation();
                        }
                    });
                }
            };

            long frameTimeInMilliseconds = (long) (1000.0 / FRAMES_PER_SECOND);
            this.timer.scheduleAtFixedRate(timerTask, frameTimeInMilliseconds, frameTimeInMilliseconds);
        }
    }

    /*
    * Updates the time in the game window
    * and checks if there is still time remaining
    * in the game.
     */
    private void updateAnimation() {
        if (this.timeRemaining == 0) {
            this.timer.cancel();
            this.mazeModel.outOfTime();
            this.endGame();
        } else {
            this.timeRemaining--;
            this.messageLabel.setText(String.format("Time remaining: %d", this.timeRemaining));
        }
    }

    public double getBoardWidth() {
        return MazeView.CELL_WIDTH * this.mazeView.getColumnCount();
    }

    public double getBoardHeight() {
        return MazeView.CELL_WIDTH * this.mazeView.getRowCount();
    }

    /*
    * Updates scoreLabel and movesLabel and
    * checks if the game is over every time a
    * move is made in the game.
     */
    private void update() {
        this.mazeView.update(this.mazeModel);
        this.scoreLabel.setText(String.format("Score: %d", this.mazeModel.getScore()));
        this.movesLabel.setText(String.format("# of Moves: %d", this.mazeModel.getNumMoves()));
        if (this.mazeModel.isGameOver()) {
            this.endGame();
        }
    }

    /*
    * Ends the game and displays the correct message
    * depending on if the game is won or lost.
     */
    private void endGame() {
        int finalScore = this.mazeModel.getScore() + this.timeRemaining;
        if (this.timeRemaining != 0) {
            this.messageLabel.setText("You won!");
            this.scoreLabel.setText(String.format("Final score: %d", finalScore));
            this.timer.cancel();
        } else if (this.timeRemaining == 0) {
            this.messageLabel.setText(String.format("Game over"));
            this.scoreLabel.setText(String.format("Final score: %d", finalScore));
        }
    }
    /*
    * Takes in a keystroke made in the game window
    * and moves the player accordingly.
    * @param keyEvent the keystroke made by the player
     */
    @Override
    public void handle(KeyEvent keyEvent) {
        boolean keyRecognized = true;
        KeyCode code = keyEvent.getCode();
        if (this.mazeModel.canMove()) {
            if (code == KeyCode.UP) {
                this.mazeModel.movePlayerBy(-1, 0);
            } else if (code == KeyCode.DOWN) {
                this.mazeModel.movePlayerBy(1, 0);
            } else if (code == KeyCode.RIGHT) {
                this.mazeModel.movePlayerBy(0, 1);
            } else if (code == KeyCode.LEFT) {
                this.mazeModel.movePlayerBy(0, -1);
            } else if (code == KeyCode.S) {
                this.mazeModel.autoSolve();
                this.timeRemaining = 0;
            }
        } else {
            keyRecognized = false;
        }
        if (keyRecognized) {
            this.update();
            keyEvent.consume();
        }
    }
}