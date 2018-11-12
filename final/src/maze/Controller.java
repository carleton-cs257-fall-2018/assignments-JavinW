package maze;

import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.event.EventHandler;
import javafx.scene.control.Label;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import java.util.Timer;
import java.util.TimerTask;
import javafx.animation.Timeline;
import javafx.event.ActionEvent;
import javafx.animation.KeyFrame;
import javafx.util.Duration;

public class Controller implements EventHandler<KeyEvent> {
    //final private double FRAMES_PER_SECOND = 20.0;

    @FXML private Label scoreLabel;
    @FXML private Label messageLabel;
    @FXML private Label movesLabel;
    @FXML private MazeView mazeView;
    private MazeModel mazeModel;
    private Timer timer;
    private Timeline timeline = new Timeline();
    private int timeRemaining;
    public Controller() {
    }

    public void initialize() {
        this.mazeModel = new MazeModel(this.mazeView.getRowCount(), this.mazeView.getColumnCount());
        this.startTimer();
        this.update();
    }

    public void startTimer() {
        this.timeRemaining = 15;
        timeline.setCycleCount(Timeline.INDEFINITE);
        timeline.getKeyFrames().add(new KeyFrame(Duration.seconds(1), new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent actionEvent) {
                System.out.println(timeRemaining);
                timeRemaining--;
            }
        }));
    }
//    private void startTimer() {
//        this.timer = new java.util.Timer();
//        TimerTask timerTask = new TimerTask() {
//            public void run() {
//                Platform.runLater(new Runnable() {
//                    public void run() {
//                        updateAnimation();
//                    }
//                });
//            }
//        };
//
//        long frameTimeInMilliseconds = (long)(1000.0 / FRAMES_PER_SECOND);
//        this.timer.schedule(timerTask, 0, frameTimeInMilliseconds);
//    }

//    private void updateAnimation() {
//
//    }

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
        this.messageLabel.setText(String.format("Time remaining: %d", this.timeRemaining));
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
        } else if (code == KeyCode.S) {
            this.mazeModel.autoSolve();
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