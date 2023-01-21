package application.control;

import application.view.MainFrameController;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

/**
 * MainFrame est une classe qui étend la classe Application de JavaFX. Elle gère la création et l'affichage de la fenêtre principale de l'application.
 * 
 * @author Alexandre Benachir
 *
 */
public class MainFrame extends Application {
	double x,y = 0;
	/**
	 * La méthode start() est utilisée pour démarrer l'application et afficher la fenêtre principale. Elle prend en paramètre un objet de type Stage qui est utilisé pour afficher la fenêtre.
	 * 
	 * @param _primaryStage un objet de type Stage qui est utilisé pour afficher la fenêtre principale de l'application.
	 * 
	 */

	@Override
	public void start(Stage _primaryStage) {
		Stage primaryStage = _primaryStage;

		try {
			FXMLLoader loader = new FXMLLoader(MainFrameController.class.getResource("mainFrame.fxml"));
			AnchorPane root = loader.load();

			root.setOnMousePressed(event -> {
				x = event.getSceneX();
				y = event.getSceneY();
			});

			root.setOnMouseDragged(event -> {
				primaryStage.setX(event.getScreenX() - x);
				primaryStage.setY(event.getScreenY() - y);
			});

			Scene scene = new Scene(root, root.getPrefWidth()+20, root.getPrefHeight()+10);
			scene.getStylesheets().add("resource/style.css");
			primaryStage.initStyle(StageStyle.UNDECORATED);
			primaryStage.setScene(scene);

			MainFrameController mfc = loader.getController();
			mfc.initContext(primaryStage);
			mfc.displayDialog(mfc);
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(-1);
		}
	}

	/**
	 * La méthode runApp() est utilisée pour démarrer l'application en appelant la méthode launch() de la classe Application.
	 *
	 */

	public static void runApp() {
		Application.launch();
	}
}
