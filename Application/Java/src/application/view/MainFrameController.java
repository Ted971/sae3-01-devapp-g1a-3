package application.view;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map.Entry;
import java.util.ResourceBundle;
import java.util.Timer;

import org.ini4j.Ini;
import org.ini4j.InvalidFileFormatException;
import org.ini4j.Wini;

import application.control.TaskBackground;
import javafx.scene.paint.Color;
import javafx.animation.TranslateTransition;
import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Cursor;
import javafx.scene.Scene;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.XYChart;
import javafx.scene.chart.XYChart.Data;
import javafx.scene.chart.XYChart.Series;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.Slider;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;
import javafx.util.Duration;

/**
 * MainFrameController est une classe qui implémente l'interface Initializable de JavaFX. Elle gère les interactions entre la vue et le modèle pour la fenêtre principale de l'application.
 * 
 * @author Alexandre Benachir
 *
 */

public class MainFrameController implements Initializable {

	// Fenêtre physique
	private Stage primaryStage;

	// Timer
	private TaskBackground tb;
	private Timer timer;

	private MainFrameController mfc;

	/**
	 * La méthode initContext() est utilisée pour initialiser le contexte de la fenêtre principale, en définissant l'objet de type Stage qui contient la fenêtre et en mettant à jour les informations d'accueil.
	 * 
	 * @param _containingStage un objet de type Stage qui contient la fenêtre principale de l'application.
	 * @throws InvalidFileFormatException
	 * @throws IOException
	 */

	public void initContext(Stage _containingStage) throws InvalidFileFormatException, IOException {
		this.primaryStage = _containingStage;
		this.initializeConfiguration();
		this.miseAJourAccueil();
		this.lancementPython();
	}

	/**
	 * La méthode displayDialog() est utilisée pour afficher la fenêtre principale de l'application et démarrer un timer pour lancer une tâche en arrière-plan régulièrement.
	 * 
	 * @param mainframeC un objet de type MainFrameController qui est utilisé pour gérer les interactions entre la vue et le modèle pour la fenêtre principale.
	 */

	public void displayDialog(MainFrameController mainframeC) {
		this.desacAccueil(true);
		this.mfc = mainframeC;
		this.primaryStage.show();
		long tps = 0;

		this.tb = new TaskBackground(mainframeC);

		// Création du timer qui va lancer la tâche tb régulièrement
		this.timer = new Timer();

		try {
			Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
			Ini.Section section = ini.get("server");
			String chaine = Integer.parseInt(section.get("time"))*60*60+"";
			tps = Long.parseLong(chaine);
		}catch (Exception e) {
			e.printStackTrace();
		}

		// Démarrage du timer avec le délai de première exécution et l'intervalle de répétition
		this.timer.scheduleAtFixedRate(
				this.tb ,
				1000L,  //delay before first execution
				tps); //time between executions
	}

	/**
	 * La méthode miseAJourAccueil() est utilisée pour mettre à jour les informations d'accueil de la fenêtre principale en utilisant les informations d'un fichier de configuration.
	 * 
	 * @throws InvalidFileFormatException
	 * @throws IOException
	 */

	private void miseAJourAccueil() throws InvalidFileFormatException, IOException {
		try {
			String str="";
			Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
			Ini.Section section = ini.get("devices");
			for(Entry<String, String> e : section.entrySet()) {
				if(e.getValue().equals("true")) {
					str+=e.getKey()+"\n";
				}
			}
			if(str.isEmpty()) {
				this.infoCapteur.setText("Aucun capteur n'est disponible");
			} else {
				this.infoCapteur.setText("Voici tous les capteurs disponibles : \n"+str);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// Attributs de la scene + actions
	@FXML
	private Label menu = new Label();

	@FXML
	private Pane sousMenu = new Pane();

	@FXML
	private Button btnGraphique = new Button();

	@FXML
	private Label menuRetour = new Label();

	@FXML
	private AnchorPane slider = new AnchorPane();

	@FXML
	private AnchorPane sliderConfig = new AnchorPane();

	@FXML
	private Label infoCapteur = new Label();

	@FXML
	private Label infoIntervalle = new Label();

	@FXML
	Button btnGraphAct = new Button();
	@FXML
	Button btnGraphCo2= new Button();
	@FXML
	Button btnGraphHum= new Button();
	@FXML
	Button btnGraphIll= new Button();
	@FXML
	Button btnGraphPress= new Button();
	@FXML
	Button btnGraphTemp= new Button();
	@FXML
	Button btnGraphTvoc = new Button();
	@FXML
	Button btnAct = new Button();
	@FXML
	Button btnCo2= new Button();
	@FXML
	Button btnHum= new Button();
	@FXML
	Button btnIll= new Button();
	@FXML
	Button btnPress= new Button();
	@FXML
	Button btnTemp= new Button();
	@FXML
	Button btnTvoc = new Button();
	@FXML
	Button btnS1 = new Button();
	@FXML
	Button btnS2 = new Button();
	@FXML
	Button btnS3 = new Button();
	@FXML
	Button btnS4 = new Button();
	@FXML
	Button btnS5 = new Button();

	@FXML
	private Label labelAct = new Label();
	@FXML
	private Label labelCo2 = new Label();
	@FXML
	private Label labelHum = new Label();
	@FXML
	private Label labelIll = new Label();
	@FXML
	private Label labelPress = new Label();
	@FXML
	private Label labelTemp = new Label();
	@FXML
	private Label labelTvoc = new Label();
	@FXML
	private Label labelS1 = new Label();
	@FXML
	private Label labelS2 = new Label();
	@FXML
	private Label labelS3 = new Label();
	@FXML
	private Label labelS4 = new Label();
	@FXML
	private Label labelS5 = new Label();
	@FXML
	private Label nomGraphique = new Label();
	@FXML
	private Label labelSlideAct = new Label();
	@FXML
	private Label labelSlideCo2 = new Label();
	@FXML
	private Label labelSlideHum = new Label();
	@FXML
	private Label labelSlideIll = new Label();
	@FXML
	private Label labelSlidePress = new Label();
	@FXML
	private Label labelSlideTemp = new Label();
	@FXML
	private Label labelSlideTvoc = new Label();

	@FXML
	private LineChart<String, Double> lincAct;
	@FXML
	private LineChart<String, Double> lincCo2;
	@FXML
	private LineChart<String, Double> lincHum;
	@FXML
	private LineChart<String, Double> lincIll;
	@FXML
	private LineChart<String, Double> lincPress;
	@FXML
	private LineChart<String, Double> lincTemp;
	@FXML
	private LineChart<String, Double> lincTvoc;

	@FXML
	Slider sliderAct = new Slider();
	@FXML
	Slider sliderCo2 = new Slider();
	@FXML
	Slider sliderHum = new Slider();
	@FXML
	Slider sliderIll = new Slider();
	@FXML
	Slider sliderPress = new Slider();
	@FXML
	Slider sliderTemp = new Slider();
	@FXML
	Slider sliderTvoc = new Slider();
	@FXML
	TextField intervalleEnvoi = new TextField();

	/**
	 * La méthode initialize est utilisée pour initialiser les écouteurs d'événements pour les curseurs de contrôle 
	 * et les boutons de la vue. Chaque curseur de contrôle est lié à une méthode de mise à jour qui met à jour la valeur 
	 * de l'étiquette associée au curseur et appelle également une méthode pour mettre à jour les données en arrière-plan. 
	 * Les boutons de graphique sont liés à des méthodes pour afficher et masquer un sous-menu d'options de graphique.
	 *
	 * @param location L'URL de l'emplacement de la vue.
	 * @param resources Les ressources utilisées pour la vue.
	 */
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		sliderAct.valueProperty().addListener((observable, oldValue, newValue) -> {
			try {
				labelSlideAct.setText(String.valueOf(newValue.intValue()));
				miseAJourSlide(labelSlideAct,"activity");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		});
		sliderCo2.valueProperty().addListener((observable, oldValue, newValue) -> {
			try {
				labelSlideCo2.setText(String.valueOf(newValue.intValue()));
				miseAJourSlide(labelSlideCo2,"co2");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		});
		sliderHum.valueProperty().addListener((observable, oldValue, newValue) -> {
			try {
				labelSlideHum.setText(String.valueOf(newValue.intValue()));
				miseAJourSlide(labelSlideHum,"Humidity");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		});
		sliderIll.valueProperty().addListener((observable, oldValue, newValue) -> {
			try {
				labelSlideIll.setText(String.valueOf(newValue.intValue()));
				miseAJourSlide(labelSlideIll,"illumination");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		});
		sliderPress.valueProperty().addListener((observable, oldValue, newValue) -> {
			try {
				labelSlidePress.setText(String.valueOf(newValue.intValue()));
				miseAJourSlide(labelSlidePress,"pressure");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		});
		sliderTemp.valueProperty().addListener((observable, oldValue, newValue) -> {
			try {
				labelSlideTemp.setText(String.valueOf(newValue.intValue()));
				miseAJourSlide(labelSlideTemp,"temperature");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		});
		sliderTvoc.valueProperty().addListener((observable, oldValue, newValue) -> {
			try {
				labelSlideTvoc.setText(String.valueOf(newValue.intValue()));
				miseAJourSlide(labelSlideTvoc,"tvoc");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		});
		btnGraphique.setOnMouseEntered(e -> montrerSousmenu(true));
		btnGraphique.setOnMouseExited(e -> montrerSousmenu(false));
		btnGraphAct.setOnMouseEntered(e -> montrerSousmenu(true));
		btnGraphAct.setOnMouseExited(e -> montrerSousmenu(false));
		btnGraphCo2.setOnMouseEntered(e -> montrerSousmenu(true));
		btnGraphCo2.setOnMouseExited(e -> montrerSousmenu(false));
		btnGraphHum.setOnMouseEntered(e -> montrerSousmenu(true));
		btnGraphHum.setOnMouseExited(e -> montrerSousmenu(false));
		btnGraphIll.setOnMouseEntered(e -> montrerSousmenu(true));
		btnGraphIll.setOnMouseExited(e -> montrerSousmenu(false));
		btnGraphPress.setOnMouseEntered(e -> montrerSousmenu(true));
		btnGraphPress.setOnMouseExited(e -> montrerSousmenu(false));
		btnGraphTemp.setOnMouseEntered(e -> montrerSousmenu(true));
		btnGraphTemp.setOnMouseExited(e -> montrerSousmenu(false));
		btnGraphTvoc.setOnMouseEntered(e -> montrerSousmenu(true));
		btnGraphTvoc.setOnMouseExited(e -> montrerSousmenu(false));
		btnAct.setOnAction(event -> {
			try {
				miseAJourBouton(btnAct, "settings", "activity");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnCo2.setOnAction(event -> {
			try {
				miseAJourBouton(btnCo2, "settings", "co2");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnHum.setOnAction(event -> {
			try {
				miseAJourBouton(btnHum, "settings", "humidity");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnIll.setOnAction(event -> {
			try {
				miseAJourBouton(btnIll, "settings", "illumination");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnPress.setOnAction(event -> {
			try {
				miseAJourBouton(btnPress, "settings", "pressure");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnTemp.setOnAction(event -> {
			try {
				miseAJourBouton(btnTemp, "settings", "temperature");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnTvoc.setOnAction(event -> {
			try {
				miseAJourBouton(btnTvoc, "settings", "tvoc");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnS1.setOnAction(event -> {
			try {
				miseAJourBouton(btnS1, "devices", "AM107-2");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnS2.setOnAction(event -> {
			try {
				miseAJourBouton(btnS2, "devices", "AM107-3");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnS3.setOnAction(event -> {
			try {
				miseAJourBouton(btnS3, "devices", "AM107-4");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnS4.setOnAction(event -> {
			try {
				miseAJourBouton(btnS4, "devices", "AM107-5");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		btnS5.setOnAction(event -> {
			try {
				miseAJourBouton(btnS5, "devices", "AM107-6");
			} catch (IOException e) {
				e.printStackTrace();
			}
		});
		try {
			btnGraphAct.setOnAction(event -> {
				try {
					Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
					Ini.Section sectionSettings = ini.get("settings");
					if(sectionSettings.get("activity").equals("true")) {
						miseAJourGraphique(this.lincAct, "Activité");
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			});
			btnGraphCo2.setOnAction(event -> {
				try {
					Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
					Ini.Section sectionSettings = ini.get("settings");
					if(sectionSettings.get("co2").equals("true")) {
						miseAJourGraphique(this.lincCo2, "Co2");
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			});
			btnGraphHum.setOnAction(event -> {
				try {
					Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
					Ini.Section sectionSettings = ini.get("settings");
					if(sectionSettings.get("humidity").equals("true")) {
						miseAJourGraphique(this.lincHum, "Humidité");
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			});
			btnGraphIll.setOnAction(event -> {
				try {
					Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
					Ini.Section sectionSettings = ini.get("settings");
					if(sectionSettings.get("illumination").equals("true")) {
						miseAJourGraphique(this.lincIll, "Illumination");
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			});
			btnGraphPress.setOnAction(event -> {
				try {
					Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
					Ini.Section sectionSettings = ini.get("settings");
					if(sectionSettings.get("pressure").equals("true")) {
						miseAJourGraphique(this.lincPress, "Pression");
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			});
			btnGraphTemp.setOnAction(event -> {
				try {
					Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
					Ini.Section sectionSettings = ini.get("settings");
					if(sectionSettings.get("temperature").equals("true")) {
						miseAJourGraphique(this.lincTemp, "Température");
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			});
			btnGraphTvoc.setOnAction(event -> {
				try {
					Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
					Ini.Section sectionSettings = ini.get("settings");
					if(sectionSettings.get("tvoc").equals("true")) {
						miseAJourGraphique(this.lincTvoc, "Tvoc");
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			});
			Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
			Ini.Section sectionSeuil = ini.get("seuil");
			Ini.Section sectionServer = ini.get("server");
			labelSlideAct.setText(sectionSeuil.get("activity"));
			labelSlideCo2.setText(sectionSeuil.get("co2"));
			labelSlideHum.setText(sectionSeuil.get("Humidity"));
			labelSlideIll.setText(sectionSeuil.get("illumination"));
			labelSlidePress.setText(sectionSeuil.get("pressure"));
			labelSlideTemp.setText(sectionSeuil.get("temperature"));
			labelSlideTvoc.setText(sectionSeuil.get("tvoc"));
			sliderAct.setValue(Double.parseDouble(sectionSeuil.get("activity")));
			sliderCo2.setValue(Double.parseDouble(sectionSeuil.get("co2")));
			sliderHum.setValue(Double.parseDouble(sectionSeuil.get("Humidity")));
			sliderIll.setValue(Double.parseDouble(sectionSeuil.get("illumination")));
			sliderPress.setValue(Double.parseDouble(sectionSeuil.get("pressure")));
			sliderTemp.setValue(Double.parseDouble(sectionSeuil.get("temperature")));
			sliderTvoc.setValue(Double.parseDouble(sectionSeuil.get("tvoc")));
			intervalleEnvoi.setText(sectionServer.get("time"));
			intervalleEnvoi.textProperty().addListener((observable, oldValue, newValue) -> {
				try {
					int nombre = Integer.parseInt(newValue);
					intervalleEnvoi.setText(newValue);
					ini.put("server", "time", newValue);
					ini.store();
				} catch (Exception e) {
					intervalleEnvoi.setText(oldValue);
				}});
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		slider.setTranslateX(0);
		menu.setOnMouseClicked(event -> {
			TranslateTransition slide = new TranslateTransition();
			slide.setDuration(Duration.seconds(0.4));
			slide.setNode(slider);

			slide.setToX(0);
			slide.play();

			slider.setTranslateX(-300);

			slide = new TranslateTransition();
			slide.setDuration(Duration.seconds(0.4));
			slide.setNode(sliderConfig);

			slide.setToX(0);
			slide.play();

			sliderConfig.setTranslateX(-80);

			slide.setOnFinished((ActionEvent e)-> {
				menu.setVisible(false);
				menuRetour.setVisible(true);
			});
		});

		menuRetour.setOnMouseClicked(event -> {
			TranslateTransition slide = new TranslateTransition();
			slide.setDuration(Duration.seconds(0.4));
			slide.setNode(slider);

			slide.setToX(-300);
			slide.play();

			slider.setTranslateX(0);

			slide = new TranslateTransition();
			slide.setDuration(Duration.seconds(0.4));
			slide.setNode(sliderConfig);

			slide.setToX(-80);
			slide.play();

			sliderConfig.setTranslateX(0);

			slide.setOnFinished((ActionEvent e)-> {
				menu.setVisible(true);
				menuRetour.setVisible(false);
			});
		});
	}

	/**
	 * La méthode miseAJourGraphique est utilisée pour mettre à jour l'affichage du graphique en fonction du nom du graphique 
	 * sélectionné. Cela désactive les autres vues, affiche le nom du graphique sélectionné et affiche le graphique sélectionné.
	 *
	 * @param linc Le graphique à afficher.
	 * @param nomGraph Le nom du graphique à afficher.
	 * @throws InvalidFileFormatException Exception levée si le format de fichier est invalide.
	 * @throws IOException Exception levée si une erreur d'entrée/sortie se produit.
	 */
	private void miseAJourGraphique(LineChart<String, Double> linc, String nomGraph) throws InvalidFileFormatException, IOException {
		desacAccueil(false);
		desacConfig(false);
		desacGraphique(false);
		this.nomGraphique.setVisible(true);;
		this.nomGraphique.setText(nomGraph);
		linc.setVisible(true);
	}

	/**
	 * La méthode miseAJourBouton est utilisée pour mettre à jour la configuration en fonction de l'état d'un bouton donné. 
	 * Elle utilise la classe Wini pour accéder à un fichier de configuration INI et met à jour la valeur associée à une section 
	 * et un paramètre spécifiés, puis enregistre les modifications. Elle change également le texte du bouton pour refléter 
	 * l'état actuel. Enfin, elle appelle une méthode pour mettre à jour l'affichage de l'accueil.
	 *
	 * @param btn Le bouton à mettre à jour.
	 * @param section La section du fichier de configuration à mettre à jour.
	 * @param param Le paramètre du fichier de configuration à mettre à jour.
	 * @throws InvalidFileFormatException Exception levée si le format de fichier est invalide.
	 * @throws IOException Exception levée si une erreur d'entrée/sortie se produit.
	 */
	private void miseAJourBouton(Button btn, String section, String param) throws InvalidFileFormatException, IOException {
		Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
		if(btn.getText().equals("Activer")) {
			ini.put(section, param, "true");
			btn.setText("Désactiver");
		} else {
			ini.put(section, param, "false");
			btn.setText("Activer");
		}
		ini.store();
		miseAJourAccueil();
	}

	/**
	 * La méthode doQuit est utilisée pour afficher une boîte de dialogue de confirmation lorsque l'utilisateur souhaite quitter 
	 * l'application. Elle crée une nouvelle fenêtre, configure ses propriétés et ajoute des écouteurs d'événements aux boutons 
	 * "Oui" et "Non". Lorsque l'utilisateur sélectionne "Oui", elle arrête le timer en cours et termine le processus python en 
	 * cours d'exécution avant de fermer l'application. Lorsque l'utilisateur sélectionne "Non", elle simplement ferme la fenêtre.
	 */
	@FXML
	private void doQuit() {
		Stage dialog = new Stage();
		dialog.initModality(Modality.APPLICATION_MODAL);
		dialog.setTitle("Confirmation");
		dialog.setMinWidth(430);

		Label label = new Label("Voulez vous vraiment quitter ?");
		label.setStyle("-fx-font-size: 16px;");

		ImageView imageView = new ImageView(new Image("images/warning.png"));
		imageView.setFitWidth(50);
		imageView.setPreserveRatio(true);
		HBox hBox = new HBox(10);
		hBox.setAlignment(Pos.CENTER);
		hBox.getChildren().addAll(imageView, label);

		Button yesButton = new Button("Oui");
		yesButton.setCursor(Cursor.HAND);
		yesButton.getStyleClass().add("confirm-button");
		yesButton.setOnAction(e -> {
			// Arrêt du timer
			this.timer.cancel();

			// Arrêt du programme python
			try {
				String[] cmd = new String[4];
				cmd[0] = "taskkill";
				cmd[1] = "/IM";
				cmd[2] = "python.exe";
				cmd[3] = "/F";
				Runtime rt = Runtime.getRuntime();
				Process pr = rt.exec(cmd);
				System.exit(0);
			}catch (Exception e2) {
				e2.printStackTrace();
			}
		});
		Button noButton = new Button("Non");
		noButton.setCursor(Cursor.HAND);
		noButton.getStyleClass().add("confirm-button");
		noButton.setOnAction(e -> dialog.close());
		HBox buttonBox = new HBox(10);
		buttonBox.setAlignment(Pos.CENTER);
		buttonBox.getChildren().addAll(yesButton, noButton);

		VBox vBox = new VBox(20);
		vBox.setPadding(new Insets(20, 20, 20, 20));
		vBox.setAlignment(Pos.CENTER);
		vBox.getChildren().addAll(hBox, buttonBox);

		Scene dialogScene = new Scene(vBox);
		dialogScene.getStylesheets().add("resource/style.css");
		dialog.setScene(dialogScene);
		dialog.showAndWait();
	}

	/**
	 * La méthode doConfigurer est utilisée pour afficher la vue de configuration en désactivant les autres vues.
	 */

	@FXML
	private void doConfigurer() {
		desacConfig(true);
		desacAccueil(false);
		desacGraphique(false);
	}

	/**
	 * La méthode doGraphique est utilisée pour afficher la vue de graphique en mettant à jour les graphiques disponibles.
	 * @throws InvalidFileFormatException Exception levée si le format de fichier est invalide.
	 * @throws IOException Exception levée si une erreur d'entrée/sortie se produit.
	 */
	public void doGraphique() throws InvalidFileFormatException, IOException {
		majGraphique(this.lincAct, "activity");
		majGraphique(this.lincCo2, "co2");
		majGraphique(this.lincHum, "humidity");
		majGraphique(this.lincIll, "illumination");
		majGraphique(this.lincPress, "pressure");
		majGraphique(this.lincTemp, "temperature");
		majGraphique(this.lincTvoc, "tvoc");
	}

	/**
	 * La méthode doAccueil est utilisée pour afficher la vue d'accueil en désactivant les autres vues.
	 */

	@FXML
	private void doAccueil() {
		desacConfig(false);
		desacGraphique(false);
		desacAccueil(true);
	}

	/**
	 * La méthode desacConfig est utilisée pour désactiver ou activer les éléments de la vue de configuration en fonction de la valeur de change.
	 * @param change La valeur booléenne qui détermine si les éléments doivent être activés ou désactivés.
	 */

	private void desacConfig(Boolean change) {
		this.btnAct.setVisible(change);
		this.btnCo2.setVisible(change);
		this.btnHum.setVisible(change);
		this.btnIll.setVisible(change);
		this.btnPress.setVisible(change);
		this.btnTemp.setVisible(change);
		this.btnTvoc.setVisible(change);
		this.btnS1.setVisible(change);
		this.btnS2.setVisible(change);
		this.btnS3.setVisible(change);
		this.btnS4.setVisible(change);
		this.btnS5.setVisible(change);
		this.labelAct.setVisible(change);
		this.labelCo2.setVisible(change);
		this.labelHum.setVisible(change);
		this.labelIll.setVisible(change);
		this.labelPress.setVisible(change);
		this.labelTemp.setVisible(change);
		this.labelTvoc.setVisible(change);
		this.labelS1.setVisible(change);
		this.labelS2.setVisible(change);
		this.labelS3.setVisible(change);
		this.labelS4.setVisible(change);
		this.labelS5.setVisible(change);
		this.sliderAct.setVisible(change);
		this.sliderCo2.setVisible(change);
		this.sliderHum.setVisible(change);
		this.sliderIll.setVisible(change);
		this.sliderPress.setVisible(change);
		this.sliderTemp.setVisible(change);
		this.sliderTvoc.setVisible(change);
		this.labelSlideAct.setVisible(change);
		this.labelSlideCo2.setVisible(change);
		this.labelSlideHum.setVisible(change);
		this.labelSlideIll.setVisible(change);
		this.labelSlidePress.setVisible(change);
		this.labelSlideTemp.setVisible(change);
		this.labelSlideTvoc.setVisible(change);
		this.intervalleEnvoi.setVisible(change);
		this.infoIntervalle.setVisible(change);
	}

	/**
	 * La méthode desacGraphique est utilisée pour désactiver ou activer les éléments de la vue de graphique en fonction de la valeur de change.
	 * @param change La valeur booléenne qui détermine si les éléments doivent être activés ou désactivés.
	 */

	private void desacGraphique(Boolean change) {
		this.lincAct.setVisible(change);
		this.lincCo2.setVisible(change);
		this.lincHum.setVisible(change);
		this.lincIll.setVisible(change);
		this.lincPress.setVisible(change);
		this.lincTemp.setVisible(change);
		this.lincTvoc.setVisible(change);
		this.nomGraphique.setVisible(change);
	}

	/**
	 * La méthode desacAccueil est utilisée pour désactiver ou activer les éléments de la vue d'accueil en fonction de la valeur de change.
	 * @param change La valeur booléenne qui détermine si les éléments doivent être activés ou désactivés.
	 */

	private void desacAccueil(Boolean change) {
		this.infoCapteur.setVisible(change);
	}

	/**
	 * La méthode initializeConfiguration est utilisée pour initialiser la configuration en utilisant les informations contenues dans le fichier de configuration.
	 * @throws InvalidFileFormatException Exception levée si le format de fichier est invalide.
	 * @throws IOException Exception levée si une erreur d'entrée/sortie se produit.
	 */
	private void initializeConfiguration() throws InvalidFileFormatException, IOException {
		Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
		Ini.Section section = ini.get("settings");
		if(section.get("activity").equals("true")) {
			this.btnAct.setText("Désactiver");
		} else {
			this.btnAct.setText("Activer");
		}
		if(section.get("co2").equals("true")) {
			this.btnCo2.setText("Désactiver");
		} else {
			this.btnCo2.setText("Activer");
		}
		if(section.get("humidity").equals("true")) {
			this.btnHum.setText("Désactiver");
		} else {
			this.btnHum.setText("Activer");
		}
		if(section.get("illumination").equals("true")) {
			this.btnIll.setText("Désactiver");
		} else {
			this.btnIll.setText("Activer");
		}
		if(section.get("pressure").equals("true")) {
			this.btnPress.setText("Désactiver");
		} else {
			this.btnPress.setText("Activer");
		}
		if(section.get("temperature").equals("true")) {
			this.btnTemp.setText("Désactiver");
		} else {
			this.btnTemp.setText("Activer");
		}
		if(section.get("tvoc").equals("true")) {
			this.btnTvoc.setText("Désactiver");
		} else {
			this.btnTvoc.setText("Activer");
		}
		section = ini.get("devices");
		if(section.get("AM107-2").equals("true")) {
			this.btnS1.setText("Désactiver");
		} else {
			this.btnS1.setText("Activer");
		}
		if(section.get("AM107-3").equals("true")) {
			this.btnS2.setText("Désactiver");
		} else {
			this.btnS2.setText("Activer");
		}
		if(section.get("AM107-4").equals("true")) {
			this.btnS3.setText("Désactiver");
		} else {
			this.btnS3.setText("Activer");
		}
		if(section.get("AM107-5").equals("true")) {
			this.btnS4.setText("Désactiver");
		} else {
			this.btnS4.setText("Activer");
		}
		if(section.get("AM107-6").equals("true")) {
			this.btnS5.setText("Désactiver");
		} else {
			this.btnS5.setText("Activer");
		}
	}

	/**
	 * Cette méthode permet de mettre à jour les graphiques en fonction des paramètres spécifiés.
	 * Elle prend en entrée un graphique de type LineChart et un paramètre de type String.
	 * Elle va chercher les informations dans un fichier de configuration et va ensuite mettre à jour les données du graphique en fonction des capteurs actifs et des seuils spécifiés.
	 * Si des erreurs d'entrée/sortie surviennent, un message d'erreur sera affiché. 
	 * @param linc : graphique de type LineChart
	 * @param param : paramètre de type String
	 */
	private void majGraphique(LineChart<String,Double> linc, String param) {
		try {
			Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
			Ini.Section sectionSeuil = ini.get("seuil");
			Ini.Section sectionCapteur = ini.get("devices");
			linc.getData().clear();
			linc.setAnimated(false);
			boolean ajoutSeuil = false;
			for(Entry<String, String> capteur : sectionCapteur.entrySet()) {
				if(capteur.getValue().equals("true")) {
					XYChart.Series<String, Double> series = new Series<String, Double>();
					XYChart.Series<String, Double> seriesS = new Series<String, Double>();
					seriesS.setName("Seuil");
					series.setName(capteur.getKey());
					File fs = new File("./src/application/python/"+capteur.getKey()+".txt");
					FileReader read = new FileReader(fs);
					BufferedReader br = new BufferedReader(read);
					String line;
					while((line = br.readLine()) != null) {
						String[] tab = line.split("\\|");
						for(String str : tab) {
							if(str.contains(param)) {
								String[] val = str.split(":");
								series.getData().add(new Data<String, Double>(tab[1], Double.parseDouble(val[1])));
								for(Entry<String, String> e : sectionSeuil.entrySet()) {
									if(e.getKey().contains(param) && !ajoutSeuil) {
										seriesS.getData().add(new XYChart.Data<String, Double>(tab[1], Double.parseDouble(e.getValue())));
										linc.getData().add(seriesS);
										ajoutSeuil = true;
									}
								}
							}
						}
					}
					read.close();
					linc.getData().add(series);
				}
			}
		} catch (IOException e ) {
			System.out.println("Certains graphiques sont vides. Attendez que des données soit récoltées.");
		}
	}

	/**
	 * Méthode pour afficher ou masquer un sous-menu.
	 * @param change booléen qui définit si le sous-menu doit être affiché ou masqué
	 */
	private void montrerSousmenu(Boolean change) {
		this.sousMenu.setVisible(change);
	}

	/**
	 * Méthode pour mettre à jour les valeurs des slides avec les valeurs enregistrées dans un fichier de configuration.
	 * @param lab Label à mettre à jour
	 * @param param paramètre à mettre à jour dans le fichier de configuration
	 * @throws InvalidFileFormatException
	 * @throws IOException
	 */
	private void miseAJourSlide(Label lab,String param) throws InvalidFileFormatException, IOException {
		Wini ini = new Wini(new File("./src/application/python/Configuration.ini"));
		ini.put("seuil", param, lab.getText());
		ini.store();
	}

	/**
	 * Méthode pour lancer un script python en utilisant la commande "python" et en spécifiant le chemin du fichier à exécuter.
	 */
	private void lancementPython() {
		try {
			String[] cmd = new String[3];
			cmd[0] = "pip";
			cmd[1] = "install";
			cmd[2] = "paho.mqtt";
			Runtime rt = Runtime.getRuntime();
			Process pr = rt.exec(cmd);

			File dir = new File("./src/application/python");
			String[] cmd2 = new String[2];
			cmd2[0] = "python";
			cmd2[1] = "appli.py";
			Runtime rt2 = Runtime.getRuntime();
			Process pr2 = rt2.exec(cmd2, null, dir);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
