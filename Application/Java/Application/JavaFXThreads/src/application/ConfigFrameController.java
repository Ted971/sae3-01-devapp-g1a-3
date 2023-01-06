package application;

import java.io.FileReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.ResourceBundle;

import org.ini4j.Ini;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.CheckMenuItem;
import javafx.scene.control.ToggleButton;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;

public class ConfigFrameController implements Initializable {

	// Fenêtre physique
	
	private Stage primaryStage;
	
	private Button btnretour;
	
	public void initContext(Stage _containingStage) {
		this.primaryStage = _containingStage;
		this.configure();
		this.validateComponentState();
	}

	
	private void configure() {
		this.primaryStage.setOnCloseRequest(e -> this.closeWindow(e));
	}

	private Object closeWindow(WindowEvent e) {
		this.doQuit();
		e.consume();
		return null;
	}
	
	private void doQuit() {
		if (AlertUtilities.confirmYesCancel(this.primaryStage, "Quitter Appli ",
				"Etes vous sur de vouloir quitter l'appli ?", null, AlertType.CONFIRMATION)) {

			// Arrêt "propre" du thread de mise à jour
			//this.rb.stopIt();
			
			// Arrêt du timer
			//this.timer.cancel();
			
			this.primaryStage.close();
			
			// Optionnel : arrêt de l'application (ici tout s'arrête proprement)
			System.exit(0);
		}
	}
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		// TODO Auto-generated method stub
		
	}
	
	@FXML
	private void doretour(ActionEvent event) {
		
		try {
			FXMLLoader loader = new FXMLLoader(
					MainFrameController.class.getResource("mainFrame.fxml"));
			BorderPane root = loader.load();

			Scene scene = new Scene(root, root.getPrefWidth()+20, root.getPrefHeight()+10);
			scene.getStylesheets().add(MainFrame.class.getResource("application.css").toExternalForm());

			primaryStage.setScene(scene);
			primaryStage.setTitle("Fenêtre Principale");

			MainFrameController mfc = loader.getController();
			mfc.initContext(primaryStage);

			mfc.displayDialog();
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.exit(-1);
		}
	}
	private void validateComponentState() {
		
		ArrayList<ToggleButton> list = new ArrayList<ToggleButton>();
		list.add(temperature);
		list.add(co2);
		list.add(Humidity);
		list.add(activity);
		
		System.out.println(list);
		
		 try {
			Ini ini = new Ini(new FileReader("./src/Configuration.ini"));
			System.out.println("Load le fichier ini ");

			Ini.Section section = ini.get("settings");
			for(Entry<String, String> e : section.entrySet()) {
				if(e.getValue().equals("true")) {
					
					for(int i =0;i< list.size();i++) {
						
						if(list.get(i).toString().contains(e.getKey())) {
							
							
							ToggleButton var = (ToggleButton) list.get(i);
							
							System.out.println(var);
							
							var.setSelected(true);
						}
					}
				}

			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@FXML
	private ToggleButton temperature ;
	
	@FXML
	private ToggleButton co2 ;
	
	@FXML
	private ToggleButton Humidity ;
	
	@FXML
	private ToggleButton activity ;
	
	@FXML
	private Button btnvalider;
	
	
	public void dovalider(){
		ArrayList<ToggleButton> list = new ArrayList<ToggleButton>();
		list.add(this.temperature);
		list.add(this.co2);
		list.add(this.Humidity);
		list.add(this.activity);
		
	try {
		Ini ini = new Ini(new FileReader("./src/Configuration.ini"));
		
		Ini.Section section = ini.get("settings");
		for(Entry<String, String> e : section.entrySet()) {
			for(int i = 0;i < list.size();i++){
				if(list.get(i).toString().contains(e.getKey())) {
					if(list.get(i).isSelected() == true) {
						//section.put(e.getKey(), "true");
						section.replace(e.getKey(), "true");
					}else {
						//section.put(e.getKey(), "false");
						section.replace(e.getKey(), "false");
					}
				}
			}
		}
		
		System.out.println("Modification valider");
		
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
}
