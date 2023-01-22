package application.control;

import application.view.MainFrameController;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

/**
 * Classe principale de l'application qui étend la classe Application de JavaFX pour créer une fenêtre non décorée et gérer les événements de déplacement de la fenêtre.
 **/
public class MainFrame extends Application {
	double x,y = 0;
	/**
	 * Méthode principale de la classe qui définit les éléments de la fenêtre principale de l'application, tels que les événements de déplacement de la fenêtre et le chargement du fichier FXML pour la vue.
	 * @param _primaryStage La scène principale de l'application.
	 **/
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
	 * Méthode statique pour lancer l'application.
	 **/
	public static void runApp() {
		Application.launch();
	}
}
