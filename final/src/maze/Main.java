package maze;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.scene.Group;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
        FXMLLoader loader = new FXMLLoader(getClass().getResource("maze.fxml"));
        Parent root = loader.load();
        primaryStage.setTitle("Maze!");
        Group imageGroup = new Group();
        imageGroup.getChildren().add(root);
        Controller controller = loader.getController();
        root.setOnKeyPressed(controller);
        double sceneWidth = controller.getBoardWidth();
        double sceneHeight = controller.getBoardHeight() + 100.0;
        Scene imageScene = new Scene(imageGroup, sceneWidth, sceneHeight);
        primaryStage.setScene(imageScene);
        primaryStage.show();
        root.requestFocus();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
