package maze;

/*
* @Author Javin White whitej2@carleton.edu
* Date: 11/17/18
* Some code borrowed from Jeff Ondich (thanks, Jeff!)
* maze game
 */

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {
    /*
    * Creates and displays a scene to the stage
    *  @param primaryStage the stage that the program
    *                       is displayed on.
     */
    @Override
    public void start(Stage primaryStage) throws Exception{
        FXMLLoader loader = new FXMLLoader(getClass().getResource("maze.fxml"));
        Parent root = loader.load();
        primaryStage.setTitle("Maze!");
        Controller controller = loader.getController();
        root.setOnKeyPressed(controller);
        double sceneWidth = controller.getBoardWidth();
        double sceneHeight = controller.getBoardHeight() + 70.0;
        Scene imageScene = new Scene(root, sceneWidth, sceneHeight);
        primaryStage.setScene(imageScene);
        primaryStage.show();
        root.requestFocus();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
