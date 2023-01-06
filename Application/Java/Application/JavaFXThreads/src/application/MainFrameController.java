package application;

import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;
import java.util.Timer;

import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.chart.PieChart;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.CheckMenuItem;
import javafx.scene.control.Label;
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

	// Manipulation de la fenêtre

	public void initContext(Stage _containingStage) {
		this.primaryStage = _containingStage;
		this.configure();
		this.validateComponentState();
	}

	public void displayDialog() {

        this.primaryStage.show();

        final NumberAxis xAxis = new NumberAxis(00,24,1);
        xAxis.setLabel("Heure (hh/mm/sec)");
        
        final NumberAxis yAxis = new NumberAxis(0,40,1);
        yAxis.setLabel("Temperature  (°C)");
        
        
        //linc = new LineChart<Number,Number>(xAxis,yAxis);
        
        //linc.setCreateSymbols(false);
        //ObservableList<LineChart.Data> l = this.linc.getData();
        //linc.setTitle("My portfolio");
        
        
       //XYChart.Data serie1 = new XYChart.Data(1, 23);
       //series1.getData().add(new XYChart.Data(2, 14));
      // series1.getData().add(new XYChart.Data(3, 15));
       //series1.getData().add(new XYChart.Data(4, 24));
      // series1.getData().add(new XYChart.Data(5, 34));
       
       
        XYChart.Series<String, Double> series = new XYChart.Series();
       // System.out.println(series.getData());
        series.setName("AM102");
       // linc.Data val = XYChart.Data<1, 23>;
        Data var = new XYChart.Data(1, 23,0);
       System.out.println(var);
        series.getData().add(new XYChart.Data("1", 23));
        series.getData().add(new XYChart.Data("2", 14));
        series.getData().add(new XYChart.Data("3", 15));
        series.getData().add(new XYChart.Data("4", 24));
        series.getData().add(new XYChart.Data("5", 34));
        series.getData().add(new XYChart.Data("6", 36));
        series.getData().add(new XYChart.Data("7", 22));
        series.getData().add(new XYChart.Data("8", 45));
        series.getData().add(new XYChart.Data("9", 43));
        series.getData().add(new XYChart.Data("10", 17));
        series.getData().add(new XYChart.Data("11", 29));
        series.getData().add(new XYChart.Data("1200000", 25));
         
        System.out.println(series.getData());
        //this.linc.getData().add(series);
        
        // Scene scene  = new Scene(linc,800,600);
        //this.primaryStage.setScene(scene);
        //this.primaryStage.show();
        System.out.println(linc.getData());
        this.linc.getData().add(series);
        System.out.println(linc.getData());
       // this.lblUn.setText("test");
        
	}

	// Fonctions internes de gestion de fenêtre
	private void validateComponentState() {
		 try {
			Ini ini = new Ini(new FileReader("./src/Configuration.ini"));
			System.out.println("Load le fichier ini ");

			
			ArrayList tab = new ArrayList<CheckMenuItem>();
			tab.add(vtemp);
			tab.add(vco2);
			tab.add(vhum);
			System.out.println(tab);
			this.list = tab;
		} catch (Exception e) {
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
	private CheckMenuItem vtemp;
	
	@FXML
	private CheckMenuItem vco2;
	
	@FXML
	private CheckMenuItem vhum;
	
	private ArrayList list;

	@FXML
	private Button btnQuit;

	// Un PieChart (Diagramme "camemberts")
	@FXML
	private LineChart<String, Double> linc;

	@Override
	public void initialize(URL location, ResourceBundle resources) {
	}
	
	@FXML
	private AnchorPane configpane;
	
	@FXML
	private void doOpenConfig(ActionEvent event) {
		
		try {
			FXMLLoader loader = new FXMLLoader(
					ConfigFrameController.class.getResource("configFrame.fxml"));
			BorderPane root = loader.load();
	
			Scene scene = new Scene(root, root.getPrefWidth()+20, root.getPrefHeight()+10);
			scene.getStylesheets().add(MainFrame.class.getResource("application.css").toExternalForm());
	
			primaryStage.setScene(scene);
			primaryStage.setTitle("Fenêtre Configuration");
	
			ConfigFrameController mfc = loader.getController();
			mfc.initContext(primaryStage);
	
			//mfc.displayDialog();
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.exit(-1);
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
	
	public void sectiontemp() {
		System.out.println("Vous avez sélctionner la température");
		Afflabel.setText("Température");
		modifierselection(vtemp);
	}
	
	public void sectionco2() {
		System.out.println("Vous avez sélctionner le Co2");
		Afflabel.setText("CO2");
		modifierselection(vco2);
	}
	
	public void sectionhum() {
		System.out.println("Vous avez sélctionner l'Humiditer");
		Afflabel.setText("Humiditer");
		modifierselection(vhum);
	}
	
	
	public void modifierselection(CheckMenuItem choix) {
		System.out.println(list);
		for(int i = 0; i<list.size();i++) {
			if(list.get(i).equals(choix)) {
				choix.setSelected(true);
			}else {
				CheckMenuItem var = (CheckMenuItem) list.get(i);
				var.setSelected(false);
			}
		}
	}
}
