package application;

import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;
import java.util.Timer;
import java.util.Map.Entry;

import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.chart.PieChart;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.CheckMenuItem;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.ToggleButton;
import javafx.scene.control.Tooltip;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.scene.chart.XYChart.Data;

import org.ini4j.Ini;
import org.ini4j.InvalidFileFormatException;
import org.ini4j.Wini;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class MainFrameController implements Initializable {

	// Fenêtre physique

	private Stage primaryStage;

	// Timer
	private TaskBackground tb;
	private Timer timer;

	// Thread
	private RunBackground rb;
	
	private MainFrameController mfc;
	
	// Manipulation de la fenêtre

	public void initContext(Stage _containingStage) {
		this.primaryStage = _containingStage;
		this.configure();
		this.validateComponentState();
		//this.pythonLanc();
	}

	/*
	private void pythonLanc() {
		try {
			String pythonScriptPath = "D:\\IUT 2023\\Wspce-SAE-S3.A.01\\DemoJavaFXThreads\\src\\appliPython";
			String[] cmd = new String[3];
			cmd[0] = "pip";
			cmd[1] = "install";
			cmd[2] = "paho.mqtt";
			Runtime rt = Runtime.getRuntime();
			Process pr = rt.exec(cmd);
			
			
			String pythonScriptPath2 = "D:\\IUT 2023\\Wspce-SAE-S3.A.01\\DemoJavaFXThreads\\src\\appliPython\\appli.py";
			String[] cmd2 = new String[2];
			cmd2[0] = "python";
			cmd2[1] = pythonScriptPath2;
			Runtime rt2 = Runtime.getRuntime();
			Process pr2 = rt2.exec(cmd2);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	*/

	public void displayDialog(MainFrameController mainframeC) {
		
		this.mfc = mainframeC;
		this.primaryStage.show();
		//miseAJourLineChart();
		//linc = new LineChart<Number,Number>(xAxis,yAxis);

		//linc.setCreateSymbols(false);
		//ObservableList<LineChart.Data> l = this.linc.getData();
		//linc.setTitle("My portfolio");

	}

	// Fonctions internes de gestion de fenêtre
	public void validateComponentState() {
		try {
			if(listeParametre.getItems().isEmpty() == false) {
				System.out.println("balise2");
				System.out.println(this.listeParametre.getItems());
				this.listeParametre = new ComboBox<String>();
				this.listeCapteur = new ComboBox<String>();
				System.out.println(this.listeParametre.getItems());
			}
			Wini ini = new Wini(new File("./src/appliPython/Configuration.ini"));
			Ini.Section section = ini.get("settings");
			for(Entry<String, String> e : section.entrySet()) {
				if(e.getValue().equals("true")) {
					this.listeParametre.getItems().add(e.getKey());
				}
			}
			this.listeParametre.setValue(this.listeParametre.getItems().get(0));
			this.Afflabel.setText(this.listeParametre.getItems().get(0));
			section = ini.get("devices");
			for(Entry<String, String> e : section.entrySet()) {
				if(e.getValue().equals("true")) {
					this.listeCapteur.getItems().add(e.getKey());
				}
			}
			this.listeCapteur.setValue(this.listeCapteur.getItems().get(0));
		} catch (Exception e) {
			System.out.println("balise4");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void configure() {
		this.primaryStage.setOnCloseRequest(e -> this.closeWindow(e));
		
	}

	// Gestion du stage
	private Object closeWindow(WindowEvent e) {
		this.doQuit();
		e.consume();
		return null;
	}

	// Attributs de la scene + actions
	// 3 Label pour afficher les valeurs numériques
	@FXML
	private Label Afflabel;

	@FXML
	ComboBox<String> listeParametre = new ComboBox<String>();

	@FXML
	ComboBox<String> listeCapteur = new ComboBox<String>();

	@FXML
	private Button btnQuit;
	
	final NumberAxis xAxis = new NumberAxis();
	final NumberAxis yAxis = new NumberAxis(0,50,5);
	
	// Un PieChart (Diagramme "camemberts")
	@FXML
	private LineChart<String, Double> linc = new LineChart(xAxis,yAxis);

	@Override
	public void initialize(URL location, ResourceBundle resources) {
	}

	@FXML
	private AnchorPane configpane;
	
	private int cpt=0;

	@FXML
	private void doOpenConfig(ActionEvent event) {
		if(cpt == 0) {
			try {
				FXMLLoader loader = new FXMLLoader(
						ConfigFrameController.class.getResource("configFrame.fxml"));
				BorderPane root = loader.load();
	
				Scene scene2 = new Scene(root, root.getPrefWidth()+20, root.getPrefHeight()+10);
				scene2.getStylesheets().add(MainFrame.class.getResource("application.css").toExternalForm());
	
				Stage secondaryStage = new Stage();
				
				secondaryStage.setScene(scene2);
				secondaryStage.setTitle("Fenêtre Configuration");
	
				ConfigFrameController cfc = loader.getController();
				cfc.initContext(secondaryStage,primaryStage);
				
				cpt++;
				
				cfc.displayDialog(mfc);
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				System.exit(-1);
			}
		}else {
			Alert errorAlert = new Alert(AlertType.ERROR);
			errorAlert.setHeaderText("Doublication de page");
			errorAlert.setContentText("La page de configuration est déjà ouverte");
			errorAlert.showAndWait();
		}
	}

	@FXML
	private void doQuit() {
		if (AlertUtilities.confirmYesCancel(this.primaryStage, "Quitter Appli Principale",
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

	// Méthode de mise à jour de la fenêtre : appelée par le thread rb ou la tâche du timer tb
	/*public void miseAJourPieChart(int _valueToAdd, int _colOfPieChart) {
		PieChart.Data pied;
		ObservableList<PieChart.Data>l ;

		l = this.piec.getData();

		// Mise à jour d'un des camemberts affichés
		pied= l.get(_colOfPieChart);
		pied.setPieValue(pied.getPieValue()+_valueToAdd);

		// Mise à jour des labels
		pied = l.get(0);
		this.lblUn.setText(pied.getName()+" : "+pied.getPieValue());
		pied = l.get(1);
		this.lblDeux.setText(pied.getName()+" : "+pied.getPieValue());
		pied = l.get(2);
		this.lblTrois.setText(pied.getName()+" : "+pied.getPieValue());

		pied = l.get(_colOfPieChart);
		System.out.println("Mise à jour de : "+pied.getName()+" : "+_valueToAdd);
	}*/

	@FXML
	public void modifierselection() {
		String param = this.listeParametre.getValue();
		this.Afflabel.setText(param);
		if(param != null) {
			DefCategorie();
			miseAJourLineChart();
		}
	}

	public void miseAJourLineChart() {
		try {
			XYChart.Series<String, Double> series = new XYChart.Series();
			XYChart.Series<String, Double> seriesS = new XYChart.Series();
			
			Wini ini = new Wini(new File("./src/appliPython/Configuration.ini"));
			Ini.Section section = ini.get("seuil");
			
			String param = this.listeParametre.getValue();
			String capteur = this.listeCapteur.getValue();
			if(capteur!=null) {
				series.setName(capteur);
				seriesS.setName("Seuil");
				File fs = new File("./src/appliPython/"+capteur+".txt");
				FileReader read = new FileReader(fs);
				BufferedReader br = new BufferedReader(read);
				StringBuffer sb = new StringBuffer(); 
				String line;
				sb.append(capteur+"\n"); 
				while((line = br.readLine()) != null)
				{
					sb.append(line);
					String[] tab = line.split("\\|");
					for(String str : tab) {
						if(str.contains(param)) {
							String[] val = str.split(":");
							series.getData().add(new XYChart.Data(tab[2], Double.parseDouble(val[1])));
							for(Entry<String, String> e : section.entrySet()) {
								if(e.getKey().contains(param)) {						
										seriesS.getData().add(new XYChart.Data(tab[2], Double.parseDouble(e.getValue())));
								}
							}
						}
					}
				}
				read.close();
				this.linc.setAnimated(false);
				this.linc.getData().clear();	
				this.linc.getData().add(series);
				this.linc.getData().add(seriesS);
			}
		} catch (IOException e ) {
			e.printStackTrace();
		}
	}
	
	/*
	public void miseAJourLineChartall() {
		
	}
	*/
	
	public void DefCategorie() {
		String param = this.listeParametre.getValue();
			switch(param){
				case "temperature":
					this.Afflabel.setTooltip(new Tooltip("La température est en °C ."));
					break;
				case "co2":
					this.Afflabel.setTooltip(new Tooltip("Le CO2 ou dioxyde de carbone ."));
					break;
				default:
					this.Afflabel.setTooltip(new Tooltip("test"));
					break;
			}
	}
	
	public void resetList() {
		try {
			this.listeParametre.getItems().clear();
			this.listeCapteur.getItems().clear();
			
			Wini ini = new Wini(new File("./src/appliPython/Configuration.ini"));
			Ini.Section section = ini.get("settings");
			for(Entry<String, String> e : section.entrySet()) {
				if(e.getValue().equals("true")) {
					this.listeParametre.getItems().add(e.getKey());
				}
			}
			this.listeParametre.setValue(this.listeParametre.getItems().get(0));
			this.Afflabel.setText(this.listeParametre.getItems().get(0));
			section = ini.get("devices");
			for(Entry<String, String> e : section.entrySet()) {
				if(e.getValue().equals("true")) {
					this.listeCapteur.getItems().add(e.getKey());
				}
			}
			this.listeCapteur.setValue(this.listeCapteur.getItems().get(0));
		}catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void Unepage() {
		cpt--;
	}
}
