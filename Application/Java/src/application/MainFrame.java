package application;

import javax.swing.plaf.basic.BasicProgressBarUI;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class MainFrame extends Application {

	// Lancement classique d'un application JavaFX
	@Override
	public void start(Stage _primaryStage) {

		Stage primaryStage = _primaryStage;
		primaryStage.setResizable(true);

		try {
			FXMLLoader loader = new FXMLLoader(
					MainFrameController.class.getResource("mainframe2.fxml"));
			BorderPane root = loader.load();

			Scene scene = new Scene(root, root.getPrefWidth()+20, root.getPrefHeight()+10);
			scene.getStylesheets().add(MainFrame.class.getResource("application.css").toExternalForm());

			primaryStage.setScene(scene);
			primaryStage.setTitle("Fenêtre Principale");

			MainFrameController mfc = loader.getController();
			mfc.initContext(primaryStage);

			mfc.displayDialog(mfc);

		} catch (Exception e) {
			e.printStackTrace();
			System.exit(-1);
		}
	}

	public static void runApp() {
		Application.launch();
	}
}
