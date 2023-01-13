package application;

import java.io.File;
import java.io.FileReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.ResourceBundle;

import org.ini4j.Ini;
import org.ini4j.Wini;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.CheckMenuItem;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleButton;
import javafx.scene.control.Tooltip;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;

public class ConfigFrameController implements Initializable {

	// Fenêtre physique
	
	
	private Button btnretour;

	private Stage secondstage;
	
	private MainFrameController mfc;
	
	private Stage stage;
	
	
	
	public void initContext(Stage _containingStage,Stage _mainstage) {
		this.stage = _mainstage;
		this.secondstage = _containingStage;
		this.configure();
		this.validateComponentState();
	}
	
	public void displayDialog(MainFrameController mainframeC) {
		this.mfc = mainframeC;
		this.secondstage.show();
		
	}

	
	private void configure() {
		this.secondstage.setOnCloseRequest(e -> this.closeWindow(e));
	}

	private Object closeWindow(WindowEvent e) {
		this.doQuit();
		e.consume();
		return null;
	}
	
	private void doQuit() {
		if (AlertUtilities.confirmYesCancel(this.secondstage, "Quitter Appli ",
				"Etes vous sur de vouloir quitter l'appli ?", null, AlertType.CONFIRMATION)) {

			// Arrêt "propre" du thread de mise à jour
			//this.rb.stopIt();
			
			// Arrêt du timer
			//this.timer.cancel();
			
			this.secondstage.close();
			
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
		//MainFrameController mfc = null;
		//mfc.modifierselection();
		mfc.Unepage();
		this.secondstage.close();
	}
	private void validateComponentState() {
		
		ArrayList<ToggleButton> list = dolistP();
		
		 try {
			Ini ini = new Ini(new FileReader("./src/appliPython/Configuration.ini"));

			Ini.Section section = ini.get("settings");
			for(Entry<String, String> e : section.entrySet()) {
				if(e.getValue().equals("true")) {
					for(int i =0;i< list.size();i++) {
						if(list.get(i).toString().contains(e.getKey())) {						
							ToggleButton var = (ToggleButton) list.get(i);
							
							var.setSelected(true);
						}
					}
				}
				
			}
			ArrayList<TextField> listL = dolistS();
			
			Ini.Section sectionS = ini.get("seuil");
			for(Entry<String, String> e : sectionS.entrySet()) {
				for(int i =0;i< listL.size();i++) {
					if(listL.get(i).toString().contains(e.getKey())) {						
						TextField var = listL.get(i);
						var.setText(e.getValue());
					}
				}
			}
			DefCategorie();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	@FXML
	private ToggleButton temperature ;
	@FXML
	private ToggleButton co2 ;
	@FXML
	private ToggleButton humidity ;
	@FXML
	private ToggleButton activity ;
	@FXML
	private ToggleButton illumination  ;
	@FXML
	private ToggleButton pressure  ;
	@FXML
	private ToggleButton tvoc  ;
	
	
	
	@FXML
	private TextField Stemperature;
	@FXML
	private TextField Sco2;
	@FXML
	private TextField Shumidity;
	@FXML
	private TextField Sactivity;
	@FXML
	private TextField Sillumination;
	@FXML
	private TextField Spressure;
	@FXML
	private TextField Stvoc;

	
	
	
	
	
	@FXML
	private Button btnvalider;
	
	@FXML
	private Label labListeVar;
	
	@FXML
	private Label labSeuilVar;
	
	public void dovalider(){
		ArrayList<ToggleButton> list = dolistP();
		ArrayList<TextField> listT = dolistS();
		
		boolean pass = true;
		
		try {
			Wini ini = new Wini(new File("./src/appliPython/Configuration.ini"));
			Ini.Section section = ini.get("settings");
			for(Entry<String, String> e : section.entrySet()) {
				for(int i = 0;i < list.size();i++){
					if(list.get(i).toString().contains(e.getKey())) {
						if(list.get(i).isSelected() == true) {
							ini.put("settings", e.getKey(), "true");
						}else {
							ini.put("settings", e.getKey(), "false");
						}
					}
				}
			}
			
			Ini.Section section2 = ini.get("seuil");
				for(Entry<String, String> e : section2.entrySet()) {
					for(int i = 0;i < listT.size();i++){
						if(listT.get(i).toString().contains(e.getKey())) {
							if(listT.get(i).getText().matches("[0-9]{0,5}")) {
								ini.put("seuil", e.getKey(),  Integer.parseInt(listT.get(i).getText()));
							}else {
								Alert errorAlert = new Alert(AlertType.ERROR);
								errorAlert.setHeaderText("Valeur non valide");
								errorAlert.setContentText("Une valeur est non valide.Elle doit etre comprise entre 0 et 99999");
								errorAlert.showAndWait();
								pass = false;
							}
						}	
					}
				}
			
			
			if(pass == true) {
				ini.store();
				mfc.resetList();
				doretour(null);
			}
			}catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	public void DefCategorie() {
		this.labListeVar.setTooltip(new Tooltip("La liste des varibles qui peuvent etre collectés.(Quand la case est griser alors la variable est sélectionner.)"));
		this.labSeuilVar.setTooltip(new Tooltip("Seuil a définir."));
	}
	
	public ArrayList<ToggleButton> dolistP() {
		ArrayList<ToggleButton> list = new ArrayList<ToggleButton>();
		list.add(temperature);
		list.add(co2);
		list.add(humidity);
		list.add(activity);
		list.add(pressure);
		list.add(illumination);
		list.add(tvoc);
		
		return list;
	}
	
	public ArrayList<TextField> dolistS(){
		ArrayList<TextField> list = new ArrayList<TextField>();
		list.add(Stemperature);
		list.add(Sco2);
		list.add(Spressure);
		list.add(Sactivity);
		list.add(Sillumination);
		list.add(Stvoc);
		list.add(Shumidity);
		return list;
	}
}
